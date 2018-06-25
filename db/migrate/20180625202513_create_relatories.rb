class CreateRelatories < ActiveRecord::Migration
  def change
    create_table :relatories do |t|
      t.string :buyer
      t.string :description
      t.float :price
      t.integer :quantity
      t.string :address
      t.string :owner

      t.timestamps null: false
    end
  end
end
