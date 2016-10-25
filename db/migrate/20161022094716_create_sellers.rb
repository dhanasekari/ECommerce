class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
    	t.string :CompanyName
    	t.string :SellerName
    	t.string :address
    	t.string :Phone
    	t.string :email
    	t.string :PaymentMethod
    	t.string :DiscountType
    	
      t.timestamps null: false
    end
  end
end
