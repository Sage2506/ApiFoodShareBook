# frozen_string_literal: true

module Api
  module V1
    class MeasuresController < ApplicationController
      def index
        paginate json: Measure.ransack(params[:q]).result
      end

      private

      def measure_params
        params.require(:measure).permit(:name)
      end
    end
  end
end
