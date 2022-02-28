# frozen_string_literal: true

class UserPermission < ApplicationRecord
  belongs_to :user
  belongs_to :permission
  scope :by_date, -> { order(create_date: :desc) }
end
