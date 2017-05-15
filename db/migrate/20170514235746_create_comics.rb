class CreateComics < ActiveRecord::Migration[5.0]
  def change
    create_table :comics do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
