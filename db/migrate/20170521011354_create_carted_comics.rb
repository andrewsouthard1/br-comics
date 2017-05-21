class CreateCartedComics < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_comics do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :carted
      t.timestamps
    end
  end
end
