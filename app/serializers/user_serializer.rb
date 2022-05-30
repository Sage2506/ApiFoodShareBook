# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :dishes_ids, :email, :role_id, :permission_ids
  def dishes_ids
    object.dishes.map(&:id)
  end
end
