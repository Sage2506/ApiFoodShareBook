# frozen_string_literal: true

module Api
  module V1
    class MeasuresController < ApplicationController
      before_action :set_measure, only: %i[show update]
      def index
        paginate json: Measure.ransack(params[:q]).result
      end

      def show
        render json: @measure
      end

      def update
        @measure.update(measure_params)
        if @measure.save
          render json: @measure
        else
          render status: :internal_server_error, json: { message: @measure.errors.full_message }
        end
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
