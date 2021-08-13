class PhysicalProduct < ApplicationRecord
  has_many_attached :images
  belongs_to :product
end
