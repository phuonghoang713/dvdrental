class Rental < ApplicationRecord
  belongs_to :staff
  belongs_to :inventory
  belongs_to :customer
  has_many :payments
end
