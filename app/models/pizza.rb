class Pizza < ApplicationRecord
    has_many :restaurant_pizzas 
    has_many :restaurants, through: :restaurant_pizzas

    validates :name, uniqueness: true
end
