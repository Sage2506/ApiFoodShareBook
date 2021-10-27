module Api
  module V1
    class PermissionTypesController < ApplicationController
      before_action :authenticate_request!, only: [:create, :current_user_permissions]
      before_action :set_ingredient, only: :update
      #GET permission_types
      def index
        paginate json: PermissionType.ransack(params[:q]).result
      end

      #POST permission_types
      def create
        permission_type = PermissionType.new(permission_type_params)
        if permission_type.save
          render json: permission_type
        else
          render json: { message: "Permission type could no be created"}, status: 409
        end
      end

      #PUT permission_types
      def update
        @permission_type.update(permission_type_params)
        if @permission_type.save
          render json: @permission_type
        else
          render json: { message: "Permission type could no be updated"}, status: 409
        end
      end

      def current_user_permissions
        render json: @current_user.permissions.where(permission_type_id: params[:permission_type_id])
      end

      private

      def set_permission_type
        @permission_type = PermissionType.find(params[:id])
      end

      def permission_type_params
        params.require(:permission_type).permit(:name)
      end

    end
  end
end