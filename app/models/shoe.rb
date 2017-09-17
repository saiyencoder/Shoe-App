class Shoe < ApplicationRecord

  # def supplier
  #   Supplier.find_by(id: self.supplier_id)  
  # end

  belongs_to :supplier
  has_many :images
  has_many :orders

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
