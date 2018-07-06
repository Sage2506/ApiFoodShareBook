module Api
  module V1
    class IngredientsController < ApplicationController
      before_action :authenticate_request!, only: [:create, :update]

      def index
        render json: Ingredient.all
      end

      def show
        render json: Ingredient.find(params[:id])
      end

      def create
        ingredient = Ingredient.find_by(name: params[:name], description: params[:description])
        if ingredient == nil
          ingredient = Ingredient.new(ingredient_params)
          if ingredient.save
            render json: ingredient
          else
            render status: :internal_server_error, json: { message: ingredient.errors.full_message}
          end
        else
          render status: :conflict, json: ingredient
        end
      end

      def update
        ingredient = Ingredient.find(params[:id])
        ingredient.update(ingredient_params)
        render json: ingredient
      end

      private

        def ingredient_params
          params.require(:ingredient).permit(:id, :name, :description, :image, :measure_ids => [])
        end
    end
  end
end
