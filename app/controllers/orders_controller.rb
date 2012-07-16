class OrdersController < ApplicationController
  def new
  end

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end

  def create
    if current_customer.nil?
      flash[:flash] = "Place sign in to place an order"
      redirect_to new_customer_session_path
      return
    end
    @product = Product.find(params[:product_id])
    @place = Place.find(params[:place_id])
    # this should be current customer.orders

    @order = @product.orders.new(params[:order])
    if @order.save
      redirect_to order_path(@order.id)
      params[:flash] = "purchase success!"

      #@place.orders.new(params[:order])
    else
      params[:flash] = "can't purchase the item"
      redirect_to place_path(@place.id)
    end
  end

  def index
    if current_customer.nil?
      flash[:flash] = "Place sign in to check your orders"
      redirect_to new_customer_session_path
      return
    end
    @orders = current_user.orders.all
  end

  def destroy
    Order.find(params[:id]).delete
    redirect_to root_path
  end
end
