module Api
  module V1
    class IngredientsController < ApplicationController
      before_action :authenticate_request!

      def index
        render json: Ingredient.all
      end

      def show
        render json: Ingredient.find(params[:id])
      end

      def create
        ingredient = Ingredient.new(ingredient_params)
        if ingredient.save
          render json: ingredient
        else
          render json: {status: 500, err: 'ingredient could not be saved.'}
        end
      end

      def update
        ingredient = Ingredient.find(params[:id])
        ingredient.update(ingredient_params)
        render json: ingredient
      end

      private

        def ingredient_params
          params.require(:ingredient).permit(:id, :name, :description, :image)
        end
    end
  end
end
