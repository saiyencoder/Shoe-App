class CartedShoe < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :shoe
  belongs_to :user
end

#created connection between carted -> user, shoe, and order models





