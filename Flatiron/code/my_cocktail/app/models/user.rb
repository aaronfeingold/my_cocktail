class User < ActiveRecord::Base
  # has_many :user_cocktails
  # has_many :cocktails, through: :user_cocktails
  has_many :cocktails
  has_secure_password

  validates :username, presence: true, uniqueness: true 
end
