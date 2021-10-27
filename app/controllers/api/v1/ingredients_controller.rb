module Api
  module V1
    class IngredientsController < ApplicationController
      before_action :authenticate_request!, only: [:create, :update]
      before_action :set_ingredient, only: [:show, :update, :destroy]
      #GET ingredients
      def index
          paginate json: Ingredient.ransack(params[:q]).result
      end
      #GET ingredients/:id
      def show
        render json: @ingredient
      end
      #POST ingredients
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
      #PUT ingredients/:id
      def update
        @ingredient.update(ingredient_params)
        @ingredient.ingredient_measures.destroy_all
        @ingredient.save_measures(params[:measures])
        render json: @ingredient
      end
      #DELETE ingredients/:id
      def destroy
        @ingredient.ingredient_measures.destroy_all
        if @ingredient.destroy
          render json: {message: "successfully deleted!"}, status: :ok
        else
          render json: {message: "Ingredient could not be deleted"}, status: 409
        end
      end

      private

      def set_ingredient
        @ingredient = Ingredient.find(params[:id])
      end

      def ingredient_params
        params.require(:ingredient).permit(:name, :description, :image)
      end
    end
  end
end
