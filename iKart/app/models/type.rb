class Type < ApplicationRecord
  belongs_to :brand
  has_many :products, dependent: :destroy
  
  validates :title, presence: true
end
