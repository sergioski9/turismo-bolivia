class PublicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_publication, only: [ :show, :edit, :update, :destroy ]
  before_action :set_place, only: [ :new, :create ]

  def index
    @publications = Publication.all
  end

  def show
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    @publication.place_id = @place.id
    @publication.user_id = current_user.id

    if @publication.save
      redirect_to publication_path(@publication)
    else
      render :new
    end
  end

  def edit
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

  private

  def publication_params
    params.require(:publication).permit(:title, :description, photos: [])
  end

  def set_publication
    @publication = Publication.find(params[:id])
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
