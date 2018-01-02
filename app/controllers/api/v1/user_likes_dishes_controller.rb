module Api
  module V1
    class UserLikesDishes < ApplicationController
      def create
        user_likes_dish = UserLikesDish.new(user_likes_dish_params)
        if user_likes_dish.save
          render json:user_likes_dish
        else
          render json:{status: 500, err: 'User Likes Dish could not be saved.'}
        end
      end
      def destroy
        user_likes_dish = UserLikesDish.where(:user_id=>params[:user_id]).where(:dish_id=>params[:dish_id]).first
        user_likes_dish.destroy
        render json: {messaje: "successfully deleted!"}, status:200
      end

      private
      def user_likes_dish_params
        params.require(:user_likes_dish).permit(:id, :user_id, :dish_id)
      end
    end
  end
end
