# frozen_string_literal: true

class PermissionTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions

  def permissions
    object.permissions.map do |permission|
      {
        id: permission.id,
        name: permission.name,
        description: permission.description
      }
    end
  end
end
