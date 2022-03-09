# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  has_many :list_items, dependent: :destroy
  validates :name, presence: true

  def generate_list_items(meals); end
end
