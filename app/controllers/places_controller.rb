class PlacesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]

  def index
    @places = Place.all
    @city = Place.where(city: params[:city]) if params[:city].present?
    sql_query = " \
        places.name @@ :query \
        OR places.description @@ :query \
        OR places.city @@ :query
      "
    @places = Place.where(sql_query, query: "%#{params[:query]}%") if params[:query].present?
  end

  def show
    @publications_top = @place.top_3
    @review = ReviewPlace.new(place: @place)
    @markers = @place.publications.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { place: place })
      }
    end
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
    @cities = ["Santa Cruz de la Sierra", "Potosí", "Oruro", "Pando", "Beni", "Tarija", "Sucre", "La Paz", "Cochabamba"]
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
