class UserSerializer < ActiveModel::Serializer
  attributes :id, :dishes_ids, :email, :role_id, :permissions
  def dishes_ids
    object.dishes.map(&:id)
  end

  def permissions
    self.object.role.permissions.map do | permission |
      {
        name: permission.name,
        description: permission.description,
        type_id: permission.permission_type.id,
        type_name: permission.permission_type.name
        #list: permission.list
      }
    end
  end
end
