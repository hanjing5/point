class PlacesController < ApplicationController
  def new
    @place = Place.new
    @places = current_merchant.places.all
  end

  def create
    
    @place = current_merchant.places.new(params[:place])

    @place.save
    redirect_to new_place_path
  end

  def show
    @place = Place.find(params[:id])
    @product = @place.products.new
    @products = @place.products.all
  end

  def edit

  end

  def destroy
  end

  def index
    if current_merchant.nil?
      params[:flash] = "You need a merchant account to manage your places"
      redirect_to root_path
      return
    end
    @places = current_merchant.places.all
  end
end
