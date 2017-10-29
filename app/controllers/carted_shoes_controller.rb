class CartedShoesController < ApplicationController
  before_action :authenticate_user!

def index
  if current_user && current_user.current_cart.any?
    @carted_shoes = current_user.current_cart
  else
    flash[:warning] = "The cart is empty"
    redirect_to '/'
  end
  
end

def new
  
end

def create
  carted_shoe = CartedShoe.new(
                                user_id: current_user.id,
                                shoe_id: params[:shoe_id],
                                quantity: params[:quantity],
                                status: "carted"
                              )

  carted_shoe.save
  flash[:success] = "Shoe has been added to the cart"
  redirect_to "/carted_shoes"
  
end

def show
  
end

def edit
  
end

def update
  
end

def destroy
  carted_shoe = CartedShoe.find(params[:id])
  carted_shoe.update(status: "removed")
  flash[:success] = "Shoe Removed"
  redirect_to "/carted_shoes"
end

end
