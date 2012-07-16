class OrdersController < ApplicationController
  def new
  end

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end

  def create
    @product = Product.find(params[:product_id])
    @place = Place.find(params[:place_id])
    # this should be current customer.orders

    @order = @product.orders.new(params[:order])
    if @order.save
      redirect_to order_path(@order.id)
      #@place.orders.new(params[:order])
    else
      params[:flash] = "can't purchase the item"
      redirect_to place_path(@place.id)
    end


  end

  def index
  end

  def destroy
    Order.find(params[:id]).delete
    redirect_to root_path
  end
end
