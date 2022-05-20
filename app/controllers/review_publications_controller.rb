class ReviewPublicationsController < ApplicationController

  def create
    @review_publication = ReviewPublication.new(review_publication_params)
    @publication = Publication.find(params[:publication_id])
    @review_publication.publication = @publication
    @review_publication.user_id = current_user.id

    if @review_publication.save
      redirect_to publication_path(@publication)
    else
      render 'publications/show'
    end
  end

  def destroy
    @review_publication = ReviewPublication.find(params[:id])
    @review_publication.destroy

    redirect_to publication_path(@review_publication.publication)
  end

  private

  def review_publication_params
    params.require(:review_publication).permit(:comment, :rating)
  end
end
