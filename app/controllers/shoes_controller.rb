class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all

    sort_attribute = params[:sort]
    desc_sort_attribute = params[:desc]
    discount_items = params[:discount]
    random_shoe = params[:random]

    if sort_attribute
      @shoes = @shoes.order(sort_attribute)
    end

    if sort_attribute && desc_sort_attribute
      @shoes = @shoes.order(sort_attribute).reverse
    end

    if sort_attribute && discount_items
      @shoes = Shoe.where("price < ?", 120)
    end

    # if sort_attribute && random_shoe
    #   random_shoe_id = rand(1..Shoe.count)
    #   @shoes = Shoe.find(random_shoe_id)
    #   redirect_to '/shoes/#{ @shoes }'
    # end


  end

  def new
    
  end

  def create
    shoe = Shoe.new(
                      name: params[:name],
                      color: params[:color],
                      image: params[:image],
                      price: params[:price]
                      )

    shoe.save
    flash[:success] = "Shoe Successfully Created"
    redirect_to '/shoes/#{ @shoes.id }'
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def update
    shoe = Shoe.find(params[:id])

    shoe.assign_attributes(
                            name: params[:id],
                            color: params[:id],
                            image: params[:id],
                            price: params[:id]
                            )
    shoe.save
    flash[:success] = "Shoe Successfully Updated"
    redirect_to '/shoes/#{ @shoe.id }'
  end

  def destroy
    shoe = Shoe.find(params[:id])
    shoe.destroy
    flash[:warning] = "Shoe Has Been Removed"
    redirect_to '/shoes'
  end 

end
