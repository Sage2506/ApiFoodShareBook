# frozen_string_literal: true

class Permission < ApplicationRecord
  validates :name, presence: true
  belongs_to :permission_type
end
