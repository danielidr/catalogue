class Stripe < ApplicationRecord
    has_many :payments, as: :paymentable
    accepts_nested_attributes_for :payments
end
