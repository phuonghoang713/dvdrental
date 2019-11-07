# == Schema Information
#
# Table name: rentals
#
#  id           :integer          not null, primary key
#  rental_date  :datetime
#  inventory_id :integer
#  customer_id  :integer
#  return_date  :datetime
#  staff_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Rental < ApplicationRecord
  belongs_to :staff
  belongs_to :inventory
  belongs_to :customer
  has_many :payments
end
