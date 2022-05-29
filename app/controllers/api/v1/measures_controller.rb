# frozen_string_literal: true

module Api
  module V1
    class MeasuresController < ApplicationController
      before_action :set_measure, only: %i[show]
      def index
        paginate json: Measure.ransack(params[:q]).result
      end

      def show
        render json: @measure
      end

      private

      def measure_params
        params.require(:measure).permit(:name)
      end

      def set_measure
        @measure = Measure.find(params[:id])
      end
    end
  end
end
