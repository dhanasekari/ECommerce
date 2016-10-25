class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
    	t.string :PaymentType
    	t.string :booleans
      t.timestamps null: false
    end
  end
end
