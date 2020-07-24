module Api
  module V1
    class DishesController < ApplicationController
      before_action :authenticate_request!, only: [:create, :update, :destroy]
      before_action :set_dish, only: [:show, :update, :destroy]
      #GET dishes
      def index
        paginate json: Dish.ransack(params[:q]).result
      end
      #GET dishes/:id
      def show
        render json: @dish
      end
      #POST dishes
      def create
        result = 0
        dish = nil
        Dish.transaction do
          dish = Dish.new(dish_params)
          dish.user_id = @current_user.id
          if dish.save
            if params[:dish_ingredients] && !dish.save_ingredients(params[:dish_ingredients])
              result = 2
              raise ActiveRecord::Rollback, "Ingredients were not saved"
            end
          else
            result = 1
          end
        end

        case result
        when 1
          render status: :internal_server_error, json: { message: dish.errors.full_message}
        when 2
          render status: :unprocessable_entity, json: {message: "One or more ingredients were not saved, check if ingredient and measure exists"}
        else
          render json: dish
        end
      end
      #PUT dishes/:id
      def update
        @dish.update(dish_params)
        @dish.dish_ingredients.destroy_all
        @dish.save_ingredients(params[:dish_ingredients])
        render json: @dish
      end
      #DELETE dishes/:id
      def destroy
        @dish.destroy
        render json: {message: "successfully deleted!"}, status: 200
      end

      private
      
      def set_dish
        @dish = Dish.find(params[:id])
      end

      def dish_params
        params.require(:dish).permit(:name, :description, :recipe, :user_id, :image)
      end
    end
  end
end
