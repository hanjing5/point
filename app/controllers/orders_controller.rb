class OrdersController < ApplicationController
  def new
  end

  def show
      @beverage = Beverage.find(params[:id])
  end

  def create
    @product = Product.find(params[:product_id])
    @place = Place.find(params[:place_id])
    # this should be current customer.orders
    @place.orders.new(params[:order])
    @place.save

    redirect_to place_path(@place.id)
  end

  def index
  end

  def destroy
    Order.find(params[:id]).delete
    redirect_to root_path
  end
end
