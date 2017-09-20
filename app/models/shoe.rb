class Shoe < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_shoes
  has_many :categories, through: :category_shoes

  # def supplier
  #   Supplier.find_by(id: self.supplier_id)  
  # end

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
