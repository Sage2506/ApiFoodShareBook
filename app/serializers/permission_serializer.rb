class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :role_id, :permission_type_id
end