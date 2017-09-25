class User < ApplicationRecord
  has_secure_password
  # has_many :orders
  has_many :carted_shoes
  has_many :orders, through: :carted_shoes
end
