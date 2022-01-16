class PermissionType < ApplicationRecord
  validates_presence_of :name
  has_many :permissions
end
