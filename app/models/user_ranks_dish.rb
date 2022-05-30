# frozen_string_literal: true

class UserRanksDish < ApplicationRecord
  belongs_to :user
  belongs_to :dish
end
