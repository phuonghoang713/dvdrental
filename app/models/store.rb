class Store < ApplicationRecord
  belongs_to :address
  has_many :staff
  has_many :inventory
end
