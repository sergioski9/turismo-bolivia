class PublicationsController < ApplicationController
  skip_before_action :authenticate_user!, except: [:edit, :destroy]
  before_action :set_publication, only: [ :show, :edit, :update, :destroy, :increase_counter ]

  def index
    @publications = Publication.all
  end

  def show
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
    @publication.active!

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
    @publication.update(counter: params[:value]) if params[:value]
    render json
  end

  private

  def publication_params
    params.require(:publication).permit(:title, :description, :category_id, :place_id, photos: [])
  end

  def set_publication
    @publication = Publication.find(params[:id])
  end
end
