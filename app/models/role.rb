class Role < ApplicationRecord
  has_many :permissions, dependent: :destroy

  def create_permissions
    PermissionType.all.each do | perm_type |
      Permission.create(role_id: self.id, permission_types_id: perm_type.id)

    end
  end
end
