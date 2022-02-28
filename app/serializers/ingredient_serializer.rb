# frozen_string_literal: true

class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :measures, :user_id

  def measures
    object.measures.map(&:id)
  end
end
