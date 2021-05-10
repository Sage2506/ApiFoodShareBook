module Api
  module V1
    class PermissionsController < ApplicationController
      before_action :authenticate_request!, only: [:create, :update]
      before_action :set_permission, only: [:show, :update]
      def index
        paginate json: Permission.ransack(params[:q]).result
      end

      def create
        result = 0
        permission = nil
        Permission.transaction do
          permission = Permission.new(permission_params)
          if !permission.save
            result = 1
          end
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

      def update
        @permission.update(permission_params)
        if @permission.save
          render json: permission
        else
          render status: :internal_server_error, json: { message: @permission.errors.full_message}
        end
      end

      private

      def set_permission
        @permission = Permission.find( params[:id] )
      end

      def permission_params
        params.require(:permission).permit(:role_id, :permission_type_id, :name, :description)
      end
    end
  end
end