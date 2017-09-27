class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_shoes
  has_many :shoes, through: :carted_shoes

  def calculate_subtotal
    sum = 0
    carted_shoes.each do |carted_shoe|
      sum += carted_shoe.subtotal
    end
    self.subtotal = sum
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
    save
  end
  
end
