# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :permissions, dependent: :destroy

  def create_permissions
    PermissionType.all.find_each do |perm_type|
      Permission.create(role_id: id, permission_types_id: perm_type.id)
    end
  end
end
