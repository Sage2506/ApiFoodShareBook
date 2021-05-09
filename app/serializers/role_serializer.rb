class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions

  def permissions
    self.object.permissions.map do | permission |
      {
        name: permission.name,
        description: permission.description,
        type_id: permission.permission_type.id,
        type_name: permission.permission_type.name
      }
    end
  end

end