class AddColumnToPublications < ActiveRecord::Migration[6.1]
  def change
    add_reference :publications, :category, null: false, foreign_key: true
  end
end
