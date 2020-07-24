module Api
  V1
    class PermissionsController < ApplicationController
      def index
        paginate json: Permission.ransack(params[:q]).result
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
        @permission = Permission.find_by(role_id: params[:role_id], permission_types_id: params[:permission_types_id])
      end

      def permission_params
        params.require(:permission).permit(:role_id, :permission_types_id, :list)
      end
    end
  end
end