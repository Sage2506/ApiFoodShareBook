module Api
  module V1
    class MeasuresController < ApplicationController
      #before_action only:[:index] do :authenticate_request! end

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
