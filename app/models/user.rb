# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role
  has_many :user_likes_dishes, dependent: :destroy
  has_many :dishes, through: :user_likes_dishes
  has_many :user_permissions, dependent: :destroy
  has_many :permissions, through: :user_permissions
  has_many :ingredients, dependent: :destroy
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: { with: /@/ }

  after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new
  before_save :downcase_email
  # before_create :generate_confirmation_instructions

  def downcase_email
    self.email = email.delete(" ").downcase
  end

  def admin?
    role.name == "Admin"
  end

  # def generate_confirmation_instructions
  #   self.confirmation_token = SecureRandom.hex(10)
  #   self.confirmation_sent_at = Time.now.utc
  # end

  def set_defaults
    self.role_id = 4 unless role_id
  end
end
