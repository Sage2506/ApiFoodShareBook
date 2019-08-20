module Api
  module V1
    class DishesController < ApplicationController
      before_action :authenticate_request!, only: [:create, :update, :destroy]

      def index
            paginate json: Dish.all, per_page: 15
      end

      def show
        render json: Dish.find(params[:id])
      end

      def create
        Dish.transaction do
          dish = Dish.new(dish_params)
          dish.user_id = @current_user.id
          if dish.save
            if dish.save_ingredients(params[:dish_ingredients])
              render json: dish
            else
              raise ActiveRecord::Rollback, "Ingredients were not saved"
              render status: :unprocessable_entity, json: {message: "Ingredients were not saved"}
            end
          else
            render status: :internal_server_error, json: { message: dish.errors.full_message}
          end
        end
      end

      def update
        dish = Dish.find(params[:id])
        dish.update(dish_params)
        render json: dish
      end

      def destroy
        dish = Dish.find(params[:id])
        dish.destroy
        render json: {message: "successfully deleted!"}, status: 200
      end

      private

        def dish_params
          params.require(:dish).permit(:name, :description, :recipe, :user_id, :dish_ingredients)
        end
    end
  end
end
