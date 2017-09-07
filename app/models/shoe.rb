class Shoe < ApplicationRecord

  def sale_message
    message = "Discount Item!" if price < 100
    message = "Everyday Value!" if price >= 100
  end

  def tax
    tax = (price * 0.09)
  end

  def total
    total = price + tax
  end

end
