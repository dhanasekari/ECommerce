class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :fname
    	t.string :lname
    	t.string :address1
    	t.string :address2
    	t.string :city
    	t.string :state
    	t.integer :pincode
    	t.integer :phone
      t.references :user, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
