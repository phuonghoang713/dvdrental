class Staff < ApplicationRecord
  belongs_to :store
  belongs_to :address
  has_many :rental
  has_many :payment
end
