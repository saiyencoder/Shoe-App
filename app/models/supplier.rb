class Supplier < ApplicationRecord

  # def shoe
  #   Shoe.where(supplier_id: id)
  # end

  has_many :shoes

end
