class Permission < ApplicationRecord
  validates_presence_of :name
  belongs_to :permission_type
end
