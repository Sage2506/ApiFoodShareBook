class Api::V1::UserPermissionsController < ApplicationController
  def index
    render json: UserPermission.all
  end

  def create
    user_permission = UserPermission.new(user_permission_params)
    if user_permission.save
      render json: user_permission
    else
      render status: :internal_server_error, json: {message: user_permission.errors.full_message}
    end
  end

  def user_permission_params
    params.require(:user_permission).permit(:user_id, :permission_id)
  end
end
