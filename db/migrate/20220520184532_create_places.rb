class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.text :description
      t.integer :rating
      t.string :city
      t.string :name
      t.text :recomendation
      t.text :how_to_get
      t.text :what_to_bring
      t.text :other_recomendation

      t.timestamps
    end
  end
end
