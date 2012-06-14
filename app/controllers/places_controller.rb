class PlacesController < ApplicationController
  def new
    @place = Place.new
    @places = Place.all
  end

  def create
    @place = Place.new(params[:place])
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
    @places = Place.all
  end
end
