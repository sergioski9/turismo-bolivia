class AddColumnToReviewPublications < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_publications, :user, null: false, foreign_key: true
  end
end
