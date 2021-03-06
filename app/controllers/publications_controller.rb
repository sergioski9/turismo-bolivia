class PublicationsController < ApplicationController
  skip_before_action :authenticate_user!, except: [:edit, :destroy]
  before_action :set_publication, only: [ :show, :edit, :update, :destroy ]

  def index
    @publications = Publication.all
  end

  def show
    @curret_publi = Publication.find(params[:id])
     @markers = @publication.user.publications.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { place: place })
      }
    end
  end

  def new
    @publication = Publication.new
    @places = Place.all
    @categories = Category.all

    redirect_to new_user_registration_path if current_user.nil?
  end

  def create
    @publication = Publication.new(publication_params)
    @publication.user_id = current_user.id
    @publication.save

    redirect_to publication_path(@publication)
  end

  def edit
    @places = Place.all
    @categories = Category.all
  end

  def update
    if @publication.update(publication_params)
      redirect_to publication_path(@publication)
    else
      render :edit
    end
  end

  def destroy
    @publication.destroy

    redirect_to publications_path
  end

  def increase_counter
    @publication = Publication.find(params[:publication_id])
    return if current_user == @publication.user

    old_counter = @publication.counter
    @publication.update(counter: old_counter + 1)
    render json: { new_counter: @publication.counter }, status: 200
  end

  private

  def publication_params
    params.require(:publication).permit(:title, :description, :category_id, :place_id, :latitude, :longitude, photos: [])
  end

  def set_publication
    @publication = Publication.find(params[:id])
  end
end
