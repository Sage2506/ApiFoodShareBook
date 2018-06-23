module Api
  module V1
    class IngredientMeasuresController < ApplicationController
      before_action only:[:create] do :authenticate_request! end
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
              render ingredient_measure.errors.full_message
            end
          else
            render json: ingredient_measure
          end

        end
        private

        def ingredient_measure_params
          params.require(:ingredient_measure).permit(:ingredient_id, :measure_id)
        end
      end
    end
  end
