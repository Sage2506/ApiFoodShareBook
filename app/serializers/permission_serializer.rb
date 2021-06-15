class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :permission_type_id
end