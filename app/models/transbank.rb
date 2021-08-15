class Transbank < ApplicationRecord
    has_many :payments, as: :paymentable

    accepts_nested_attributes_for :payments
    
    enum method: ["Credit card", "Webpay", "Oneclick"]
end
