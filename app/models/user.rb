class User < ApplicationRecord
  has_secure_password
  has_many :carted_shoes
  has_many :orders

  validates :email, uniqueness: true

  def current_cart
    carted_shoes.where(status: "carted")
  end

end
