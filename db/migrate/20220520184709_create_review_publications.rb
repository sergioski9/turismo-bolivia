class CreateReviewPublications < ActiveRecord::Migration[6.1]
  def change
    create_table :review_publications do |t|
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
