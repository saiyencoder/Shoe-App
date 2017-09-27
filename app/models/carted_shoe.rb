class CartedShoe < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :shoe
  belongs_to :user

  def subtotal
    shoe.price * quantity
  end

end






