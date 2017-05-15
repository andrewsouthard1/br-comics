class Order < ApplicationRecord
  has_many :carted_products
  has_many :comics, through: :carted_products
end
