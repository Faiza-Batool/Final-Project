class Brand < ApplicationRecord
    has_many :types, dependent: :destroy 

    validates :title, presence: true
end
