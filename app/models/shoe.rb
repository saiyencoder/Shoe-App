class Shoe < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_shoes
  has_many :categories, through: :category_shoes
  has_many :carted_shoes
  has_many :orders, through: :carted_shoes

  def discounted?
    price < 120
  end

  def tax
    price * 0.09 
  end

  def total
    price + tax
  end

  def default_image
    if images.empty?
      "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiGx5Pqib3WAhUkwYMKHXZGBmoQjRwIBw&url=http%3A%2F%2Fwww.freepngimg.com%2Fmiscellaneous%2Fcoming-soon&psig=AFQjCNGvctMO-d6beQOgejz_6CIkLF3iAA&ust=1506316844329056"
    else
      images.first.url
    end
  end


end
