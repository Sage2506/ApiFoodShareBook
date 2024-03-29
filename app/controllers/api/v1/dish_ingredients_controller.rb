# frozen_string_literal: true

module Api
  module V1
    class DishIngredientsController < ApplicationController
      before_action :authenticate_request!, only: %i[create destroy]
      # GET dish_ingredients
      def index
        render json: DishIngredient.all
      end

      # GET dish_ingredients/:id
      def show
        render json: DishIngredient.find(params[:id])
      end

      # POST dish_ingredients
      def create
        dish_ingredient = DishIngredient.find_by(
          dish_id: params[:dish_id],
          ingredient_id: params[:ingredient_id]
        )
        if dish_ingredient.nil?
          dish_ingredient = DishIngredient.new(dish_ingredient_params)
          if dish_ingredient.save
            render json: dish_ingredient
          else
            render status: :internal_server_error, json: { message: dish_ingredient.errors.full_message }
          end
        else
          render status: :conflict, json: dish_ingredient
        end
      end

      # DELETE dish_ingredients
      def destroy
        dish = Dish.find(params[:id])
        dish.destroy
        render json: { message: "successfully deleted!" }
      end

      private

      def dish_ingredient_params
        params.require(:dish_ingredient).permit(:dish_id, :ingredient_id, :quantity, :measure_id)
      end
    end
  end
end
