class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
