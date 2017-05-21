class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :comic
  belongs_to :order, optional: true
end
