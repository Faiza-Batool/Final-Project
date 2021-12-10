class Item < ApplicationRecord
    belongs_to :product
    belongs_to :cart

    # validates :product_id, uniqueness: { scope: :cart_id}#, message: {"Item is already in the cart"}
end
