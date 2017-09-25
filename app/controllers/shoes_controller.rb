class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all

    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    discount_amount = params[:discount]
    category_attribute = params[:category]
    search_term = params[:search_term]

    if search_term
      @shoes = @shoes.where("name iLIKE ? OR color iLIKE ? OR price iLIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%" )
    end

    if discount_amount
      @shoes = @shoes.where("price < ?", discount_amount)
    end

    if category_attribute
      cat = Category.find_by(name: category_attribute)
      @shoes = cat.shoes
    end

    if sort_attribute && order_attribute
      @shoes = @shoes.order({sort_attribute => order_attribute})
    end

    if sort_attribute
      @shoes = @shoes.order(sort_attribute)
    end

  end

  def new
    @suppliers = Supplier.all
  end

  def create
    shoe = Shoe.new(
                      name: params[:name],
                      color: params[:color],
                      price: params[:price],
                      supplier_id: params[:supplier_id]
                      )

    shoe.save
    flash[:success] = "Shoe Successfully Created"
    redirect_to '/shoes/#{ @shoes.id }'
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def edit
    @suppliers = Supplier.all
    @shoe = Shoe.find(params[:id])
  end

  def update
    shoe = Shoe.find(params[:id])

    shoe.assign_attributes(
                            name: params[:id],
                            color: params[:id],
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

  def random
    shoe_id = Shoe.all.sample.id
    redirect_to "/shoes/#{shoe_id}"
  end

end
