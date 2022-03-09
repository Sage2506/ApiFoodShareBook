# frozen_string_literal: true

class ListItem < ApplicationRecord
  belongs_to :list
  enum status: { pending: 1, done: 2 }
end
