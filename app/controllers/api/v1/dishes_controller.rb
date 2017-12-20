module Api
  module V1
    class DishesController < ApplicationController

      def index
        render json: Dish.all
      end

      def show
        render json: Dish.find(params[:id])
      end

      def create
        dish = Dish.new(dish_params)
        if dish.save
          render json: dish
        else
          render json: {status: 500, err: 'Dish could not be saved.'}
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
          params.require(:dish).permit(:id, :name, :description, :recipe, :ingredient_ids => [])
        end
    end
  end
end
