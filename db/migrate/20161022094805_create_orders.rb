class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.datetime :OrderDate
    	t.datetime :ShipDate
    	t.datetime :RequiredDate
    	t.boolean :TransactSatus
    	t.string :paid
    	t.datetime :PayDate
      t.timestamps null: false
    end
  end
end
