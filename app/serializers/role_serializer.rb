class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions

  def permissions
    self.object.permissions.map do | permission |
      {
        type_id: permission.permission_type.id,
        type_name: permission.permission_type.name,
        list: permission.list
      }
    end
  end

end