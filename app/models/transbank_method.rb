class TransbankMethod < ApplicationRecord
    has_many :transbanks

    enum name: ["Credit card", "Webpay", "Oneclick"]
end
