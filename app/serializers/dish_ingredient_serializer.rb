# frozen_string_literal: true

class DishIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :measure, :ingredient

  delegate :measure, to: :object

  delegate :ingredient, to: :object
end
