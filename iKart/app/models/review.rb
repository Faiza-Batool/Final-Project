class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :body, length: { minimum: 2, maximum: 200 }
  validates :rating, numericality: {greater_than_or_equal_to: 0}
end
