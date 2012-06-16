class PagesController < ApplicationController
  def index
      @orders = Order.all
      @products = Product.all
      @places = Place.all
  end

  def new
  end

  def show
  end
end
