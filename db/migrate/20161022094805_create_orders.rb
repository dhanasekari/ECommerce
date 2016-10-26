class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.datetime :OrderDate
    	t.datetime :ShipDate
    	t.datetime :RequiredDate
    	t.boolean  :TransactSatus
    	t.string   :paid
    	t.datetime :PayDate
      t.references :user, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
