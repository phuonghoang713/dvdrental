class Staff < ApplicationRecord
  belongs_to :store
  belongs_to :address
  has_many :rentals
  has_many :payments
end
