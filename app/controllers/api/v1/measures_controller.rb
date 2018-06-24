module Api
  module V1
    class MeasuresController < ApplicationController
    
        def index
          render json: Measure.all
        end
        private
        def measure_params
          params.require(:measure).permit(:id, :name)
        end
      end
    end
  end
