module Api
  module V1
    class IngredientMeasuresController < ApplicationController
      before_action :authenticate_request!, only: [:create]
        def index
          render json: IngredientMeasure.all
        end

        def create
          ingredient_measure = IngredientMeasure.find_by(
                                                  ingredient_id: params[:ingredient_id],
                                                  measure_id: params[:measure_id])
          if ingredient_measure == nil
            ingredient_measure = IngredientMeasure.new(ingredient_measure_params)
            if ingredient_measure.save
              render json: ingredient_measure
            else
              render status: :internal_server_error, json: {message:  ingredient_measure.errors.full_message}
            end
          else
            render status: :conflict, json: ingredient_measure
          end

          def show
            ingredient_measure = IngredientMeasure.find_by(
                                                    ingredient_id: params[:ingredient_id],
                                                    measure_id: params[:measure_id])
            if(ingredient_measure == nil)
              render status: :not_found, json: {message: ingredient_measure.errors.full_message}
            else
            render json: IngredientMeasure.find(params[:id])
          end
          end

        end
        private

        def ingredient_measure_params
          params.require(:ingredient_measure).permit(:id, :ingredient_id, :measure_id)
        end
      end
    end
  end
