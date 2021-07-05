class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :subtitle
      t.text :description
      t.integer :price
      t.integer :quantity
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
