class CategoryShoe < ApplicationRecord
  belongs_to :shoe
  belongs_to :category
end
