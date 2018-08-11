module Api
  module V1
    class UserLikesDishes < ApplicationController
      def create
        user_likes_dish = UserLikesDish.new(user_likes_dish_params)
        if user_likes_dish.save
          render json:user_likes_dish
        else
          render status: :internal_server_error, json: {message: user_likes_dish.errors.full_message}
        end
      end
      def destroy
        user_likes_dish = UserLikesDish.where(:user_id=>params[:user_id]).where(:dish_id=>params[:dish_id]).first
        user_likes_dish.destroy
        render status: :ok, json: {messaje: "successfully deleted!"}
      end

      private
      def user_likes_dish_params
        params.require(:user_likes_dish).permit(:user_id, :dish_id)
      end
    end
  end
end
