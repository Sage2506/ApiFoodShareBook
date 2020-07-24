class Permission < ApplicationRecord
  belongs_to :permission_type
  belongs_to :role
end
