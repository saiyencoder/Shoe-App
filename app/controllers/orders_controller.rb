class OrdersController < ApplicationController

  def create

    order = Order.new(
                      user_id: current_user.id,
                      shoe_id: params[:shoe_id],
                      quantity: params[:quantity]
                      )

   order.calculate_totals

    order.save
    flash[:success] = "Shoe has been added to the order."
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])    
  end

end
