class Transbank < ApplicationRecord
    has_many :payments, as: :paymentable
    belongs_to :transbank_method

    accepts_nested_attributes_for :payments
end
