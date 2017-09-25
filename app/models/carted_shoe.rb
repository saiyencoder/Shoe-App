class CartedShoe < ApplicationRecord
  belongs_to :order
  belongs_to :shoe
  belongs_to :user
end

#created connection between carted -> user, shoe, and order models






#Stat belongs_to :game
      #has_one :season, through: :game