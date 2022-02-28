# frozen_string_literal: true

module Api
  module V1
    class PermissionsController < ApplicationController
      before_action :authenticate_request!, only: %i[create update]
      before_action :set_permission, only: %i[show update destroy]
      def index
        paginate json: Permission.ransack(params[:q]).result
      end

      def create
        result = 0
        permission = nil
        Permission.transaction do
          permission = Permission.new(permission_params)
          result = 1 unless permission.save
        end

        case result
        when 1
          render status: :internal_server_error, json: { message: permission.errors.full_message }
        else
          render json: permission
        end
      end

      def show
        render json: @permission
      end

      def destroy
        if @permission.destroy
          render json: { message: "successfully deleted!" }, status: :ok
        else
          render json: { message: "Permission could not be deleted" }, status: :conflict
        end
      end

      def update
        @permission.update(permission_params)
        if @permission.save
          render json: @permission
        else
          render status: :internal_server_error, json: { message: @permission.errors.full_message }
        end
      end

      private

      def set_permission
        @permission = Permission.find(params[:id])
      end

      def permission_params
        params.require(:permission).permit(:permission_type_id, :name, :description)
      end
    end
  end
end
