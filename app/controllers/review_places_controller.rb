class ReviewPlacesController < ApplicationController

  def create
    @review_place = ReviewPlace.new(review_place_params)
    @place = Place.find(params[:place_id])
    @review_place.place = @place
    @review_place.user_id = current_user.id

    if @review_place.save
      redirect_to place_path(@place)
    else
      render "places/show"
    end
  end

  def destroy
    @review_place = ReviewPlace.find(params[:id])
    @review_place.destroy

    redirect_to place_path(@review_place.place)
  end

  private

  def review_place_params
    params.require(:review_place).permit(:comment, :rating)
  end
end
