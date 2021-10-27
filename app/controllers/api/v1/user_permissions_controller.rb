class Api::V1::UserPermissionsController < ApplicationController
  before_action :set_user_permission, only: [:destroy]
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

  def destroy
    if @user_permission.destroy
      render json: {message: "successfully deleted!" }, status: :ok
    else
      render json: {message: "User permission not deleted"}, status: :conflict
    end
  end

  def user_permission_params
    params.require(:user_permission).permit(:user_id, :permission_id)
  end
  def set_user_permission
    @user_permission = UserPermission.find(params[:id])
  end
end
