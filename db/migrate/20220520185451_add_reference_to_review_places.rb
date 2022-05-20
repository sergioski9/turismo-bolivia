class AddReferenceToReviewPlaces < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_places, :place, null: false, foreign_key: true
  end
end
