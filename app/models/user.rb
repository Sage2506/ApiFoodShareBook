class User < ApplicationRecord
  belongs_to :role
  has_many :user_likes_dishes
  has_many :dishes, through: :user_likes_dishes

  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/

  before_save :downcase_email
  # before_create :generate_confirmation_instructions

  def downcase_email
    self.email = self.email.delete(' ').downcase
  end

  def isAdmin
    return self.role.name == 'Admin'
  end

  # def generate_confirmation_instructions
  #   self.confirmation_token = SecureRandom.hex(10)
  #   self.confirmation_sent_at = Time.now.utc
  # end
end
