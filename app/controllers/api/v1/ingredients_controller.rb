module Api
  module V1
    class IngredientsController < ApplicationController
      before_action :authenticate_request!, only: [:create, :update]
      def index
          paginate json: Ingredient.ransack(params[:q]).result
      end

      def show
        render json: Ingredient.find(params[:id])
      end

      def create
        result = 0
        ingredient = nil
        Ingredient.transaction do
          ingredient = Ingredient.new(ingredient_params)
          if ingredient.save
            if params[:measures] && !ingredient.save_measures(params[:measures])
            result = 2
            raise ActiveRecord::Rollback, "Ingredient not saved"
            end
          else
            result = 1
          end
        end
        
        case result
        when 1
          render status: :internal_server_error, json: { message: ingredient.errors.full_message}
        when 2
          render status: :unprocessable_entity, json: {message: "One or more measures could not be created, check if measure exists"}
        else
          render json: ingredient
        end
      end

      def update
        ingredient = Ingredient.find(params[:id])
        ingredient.update(ingredient_params)
        render json: ingredient
      end

      private

        def ingredient_params
          params.require(:ingredient).permit(:name, :description, :image, :measures)
        end
    end
  end
end
