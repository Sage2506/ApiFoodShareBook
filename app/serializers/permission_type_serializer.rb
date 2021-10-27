class PermissionTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions

  def permissions
    self.object.permissions.map do |permission|
      {
        id: permission.id,
        name: permission.name,
        description: permission.description
      }
    end
  end
end
