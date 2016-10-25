class Product < ActiveRecord::Base
	belongs_to :seller
	has_many :categories
	#belongs_to :user
end
