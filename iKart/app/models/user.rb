class User < ApplicationRecord
    has_secure_password

    has_many :reviews, dependent: :destroy

    has_many :likes, dependent: :destroy
    has_many :liked_products, through: :likes, source: :product

    has_many :carts, dependent: :destroy

    has_many :sent_payments, class_name: 'Payment', foreign_key: :sender_id,dependent: :nullify
    has_many :received_payments, class_name: 'Payment', foreign_key: :receiver_id,dependent: :nullify

    validates :email, presence:true, uniqueness:true ,format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
    validates :password, presence: true, length: { minimum: 3 }, :on => :create

    def full_name
        "#{first_name} #{last_name}".strip.titlecase
    end
end
