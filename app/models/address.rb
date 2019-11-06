class Address < ApplicationRecord
  belongs_to :city
  has_many :stores
  has_many :staffs
  has_many :customers
end
