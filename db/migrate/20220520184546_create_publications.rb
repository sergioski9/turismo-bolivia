class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :status, default: 1
      t.float :latitude
      t.float :longitude
      t.integer :counter, default: 0

      t.timestamps
    end
  end
end
