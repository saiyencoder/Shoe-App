class Shoe < ApplicationRecord

  def discounted?
    price < 120
  end

  def tax
    price * 0.09 
  end

  def total
    price + tax
  end

end
