class Address < ApplicationRecord
  belongs_to :city
  has_many :store
  has_many :staff
  has_many :customer
end
