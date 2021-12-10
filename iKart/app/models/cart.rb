class Cart < ApplicationRecord
  belongs_to :user
  
  has_many :items, dependent: :destroy
  has_many :products_in_cart, through: :items, source: :product

  #for each cart id each product id associated with cart id should be unique
  
end
