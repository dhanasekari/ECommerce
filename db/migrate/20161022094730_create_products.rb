class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :ProductName
    	t.string :description
    	t.integer :price
    	t.string :size
    	t.string :color
    	t.integer :discount
    	t.string :status

      t.timestamps null: false
    end
  end
end
