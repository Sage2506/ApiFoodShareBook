# frozen_string_literal: true

class PermissionType < ApplicationRecord
  validates :name, presence: true
  has_many :permissions, dependent: :destroy
end
