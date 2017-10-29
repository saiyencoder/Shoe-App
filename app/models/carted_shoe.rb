class CartedShoe < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :shoe
  belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true}
  validates :quantity, numericality: {greater_than: 0}

  def subtotal
    shoe.price * quantity
  end

end






