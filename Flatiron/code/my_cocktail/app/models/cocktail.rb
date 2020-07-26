class Cocktail < ActiveRecord::Base
  belongs_to :user
  # has_many :user_cocktails
  # has_many :users, through: :user_cocktails
  validates :name, presence: true
end
