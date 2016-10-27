class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_items
  belongs_to :user
  belongs_to :product
end
