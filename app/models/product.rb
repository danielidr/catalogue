class Product < ApplicationRecord
  has_one :physical_product
  has_one :digital_product
  
  has_many :order_items
  has_many :orders, through: :order_items
end
