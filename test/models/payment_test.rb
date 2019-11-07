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

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
