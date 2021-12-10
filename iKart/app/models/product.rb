class Product < ApplicationRecord
  belongs_to :type
  belongs_to :user
  
  has_many :reviews, dependent: :destroy
  
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user
  
  has_many :items, dependent: :destroy
  has_many :items_added_to_cart, through: :items, source: :cart

  validates :name, presence: true

  
end
