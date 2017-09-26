class CartedShoesController < ApplicationController

def index
  @carted_shoes = CartedShoe.all
  
end

def new
  
end

def create
  carted_shoe = CartedShoe.new(
                                user_id: current_user.id,
                                shoe_id: params[:shoe_id],
                                quantity: params[:quantity],
                                status: params[:status]
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
  
end

end
