class PlacesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]

  def index
    @places = Place.all
  end

  def show
    @placehelp = Place.find(params[:id])
  end

  def new
    @place = Place.new
    @cities = ["Santa Cruz de la Sierra", "Potosí", "Oruro", "Pando", "Beni", "Tarija", "Sucre", "La Paz", "Cochabamba"]
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to place_path(@place)
    else
      render :edit
    end
  end

  def destroy
    @place.destroy

    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :city, :recomendation, :how_to_get, :what_to_bring, :other_recomendation, :rating, photos: [])
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
