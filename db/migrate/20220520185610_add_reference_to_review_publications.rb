class AddReferenceToReviewPublications < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_publications, :publication, null: false, foreign_key: true
  end
end
