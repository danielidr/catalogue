class Transbank < ApplicationRecord
    has_many :payments, as: :paymentable
    belongs_to :transbank_method
end
