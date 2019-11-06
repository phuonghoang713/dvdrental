class Payment < ApplicationRecord
  belongs_to :customer
  belongs_to :rental
  belongs_to :staff
end
