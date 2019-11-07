# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  address     :string
#  address2    :string
#  district    :string
#  city_id     :integer
#  postal_code :string
#  phone       :string
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Address < ApplicationRecord
  belongs_to :city
  has_many :stores
  has_many :staffs
  has_one :customer
end
