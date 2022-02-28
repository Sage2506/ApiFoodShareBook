# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      before_action :authenticate_request!, only: %i[show create update_permissions]
      before_action :user_type!, only: [:current_user_data]
      before_action :set_user, only: %i[show update]
      def index
        paginate json: User.ransack(params[:q]).result
      end

      def create
        user = User.new(user_params)
        if user.save
          auth_token = JsonWebToken.encode({ user_id: user.id })
          render json: { status: "User created successfully", auth_token: }, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :bad_request
        end
      end

      def show
        render json: @user
      end

      def update
        @user.update(user_params)
        render json: @user
      end

      def update_permissions
        user = User.find(params[:user_id])
        user.update(:permission_ids, params[:permission_ids])
        render json: user
      end

      def current_user_data
        render json: @current_user
      end

      def login
        user = User.find_by(email: params[:email].to_s.downcase)
        if user&.authenticate(params[:password])
          auth_token = JsonWebToken.encode({ user_id: user.id })
          render json: { auth_token: }, status: :ok
        else
          render json: { error: "Invalid username / password" }, status: :unauthorized
        end
      end

      def permissions
        user = User.find(params[:user_id])
        user_permissions = user.user_permissions.map do |user_permission|
          {
            id: user_permission.id,
            name: user_permission.permission.name,
            description: user_permission.permission.description,
            permission_id: user_permission.permission.id
          }
        end
        render json: user_permissions
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :permission_ids, dishes_ids: [])
      end
    end
  end
end
