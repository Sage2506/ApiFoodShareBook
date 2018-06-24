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
        dish = Dish.find_by(name: params[:name])
        if dish == nil
          dish = Dish.new(dish_params)
          if dish.save
            render json: dish
          else
            render status: :internal_server_error, json: { message: dish.errors.full_message}
          end
        else
          render status: :conflict, json: dish
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
          params.require(:dish).permit(:id, :name, :description, :recipe, :ingredient_ids => [], :users_ids => [])
        end
    end
  end
end
