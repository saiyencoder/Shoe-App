class Order < ApplicationRecord
  # belongs_to :shoe, optional: true
  # belongs_to :user, optional: true
  has_many :carted_shoes
  has_many :shoes, through: :carted_shoes
  has_many :carted_shoes
  has_many :users, through: :carted_shoes

  def calculate_subtotal
    self.subtotal = shoe.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end

end
