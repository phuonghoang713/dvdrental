# == Schema Information
#
# Table name: stores
#
#  id               :integer          not null, primary key
#  manager_staff_id :integer
#  address_id       :integer
#  last_update      :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Store < ApplicationRecord
  belongs_to :address
  has_many :staffs
  has_many :inventories
  has_many :customers
end
