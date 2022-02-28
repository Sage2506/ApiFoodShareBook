# frozen_string_literal: true

class UserLikesDish < ApplicationRecord
  belongs_to :user
  belongs_to :dish
end
