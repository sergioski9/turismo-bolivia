class AddReferenceToPublications < ActiveRecord::Migration[6.1]
  def change
    add_reference :publications, :user, null: true, foreign_key: true
    add_reference :publications, :place, null: false, foreign_key: true
  end
end
