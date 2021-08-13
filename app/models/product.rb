class Product < ApplicationRecord
  has_one :physical_product
  has_one :digital_product
end
