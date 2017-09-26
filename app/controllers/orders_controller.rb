class OrdersController < ApplicationController

  def create
    carted_shoes = current_user.carted_shoes

    if carted_shoes.status == "Carted"
      order = Order.new(
                        user_id: current_user.id,
                        )

      order.calculate_totals

      order.save
    end
    flash[:success] = "Shoe has been added to the order."
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])    
  end

end
