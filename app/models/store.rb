class Store < ApplicationRecord
  belongs_to :address
  has_many :staffs
  has_many :inventories
end
