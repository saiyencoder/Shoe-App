class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def new
    
  end

  def create
    supplier = Supplier.new(
                            name: params[:name],
                            email: params[:email],
                            phone: params[:phone]
                            )

    supplier.save
    flash[:success] = "Supplier successfully created"
    redirect_to "/suppliers/#{supplier.id}"
  end 

  def show
    @supplier = Supplier.find(params[:id])
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.assign_attributes(
                                name: params[:name],
                                email: params[:email],
                                phone: params[:phone]
                                )
    supplier.save
    flash[:success] = "Supplier successfully updated"
    redirect_to "/suppliers/#{supplier.id}"
  end

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.destroy
    flash[:warning] = "Supplier successfully removed"
    redirect_to "/suppliers"
  end

end
