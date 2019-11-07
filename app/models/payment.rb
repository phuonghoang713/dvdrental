# == Schema Information
#
# Table name: payments
#
#  id           :integer          not null, primary key
#  customer_id  :integer
#  staff_id     :integer
#  rental_id    :integer
#  amount       :float
#  payment_date :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :customer
  belongs_to :rental
  belongs_to :staff
end
