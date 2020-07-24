module Api
  module V1
    class UsersController < ApplicationController
      before_action :authenticate_request!, only: [:show, :create]
      before_action :user_type!, only: :current_user_data
      def index
        paginate json: User.ransack(params[:q]).result
      end


      def create
        user = User.new(user_params)

        if user.save
          auth_token = JsonWebToken.encode({user_id: user.id})
          render json: {status: 'User created successfully', auth_token: auth_token}, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :bad_request
        end
      end

      def show
        render json: User.find(params[:id])
      end

      def current_user_data
        render json: @current_user
      end

      def login
        user = User.find_by(email: params[:email].to_s.downcase)
        if user && user.authenticate(params[:password])
            auth_token = JsonWebToken.encode({user_id: user.id})
            email = user.email
            render json: {auth_token: auth_token}, status: :ok
        else
          render json: {error: 'Invalid username / password'}, status: :unauthorized
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :dishes_ids => [])
      end
    end
  end
end
