class Category < ActiveRecord::Base
	has_many :product
	belongs_to :seller
end
