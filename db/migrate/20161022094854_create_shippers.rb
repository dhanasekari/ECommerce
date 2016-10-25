class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
    	t.string :CompanyName
    	t.integer :phone 
      t.timestamps null: false
    end
  end
end
