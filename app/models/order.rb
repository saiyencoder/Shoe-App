class Order < ApplicationRecord
  belongs_to :shoe, optional: true
  belongs_to :user, optional: true
end
