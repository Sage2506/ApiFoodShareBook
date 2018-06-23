module Api
  module V1
    class DishIngredientsController < ApplicationController
      before_action only:[:create, :destroy] do :authenticate_request! end
      def index
        render json: DishIngredient.all
      end

      def show
        render json: DishIngredient.find(params[:id])
      end

      def create
        dish_ingredient = DishIngredient.find_by(
          dish_id: params[:dish_id],
          ingredient_id: params[:ingredient_id]
        )
        if dish_ingredient == nil
          dish_ingredient = DishIngredient.new(dish_ingredient_params)
          if dish_ingredient.save
            render json: dish_ingredient
          else
            render json: dish_ingredient.errors.full_message
          end
        else
          render json: dish_ingredient
        end
      end


      def destroy
        dish = Dish.find(params[:id])
        dish.destroy
        render json: {message: "successfully deleted!"}, status: 200
      end

      private

        def dish_ingredient_params
          params.require(:dish_ingredient).permit(:id, :dish_id, :ingredient_id)
        end
    end
  end
end
