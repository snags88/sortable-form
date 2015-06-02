class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :order
      t.string :description
      t.string :token
      t.references :album, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :albums
  end
end
