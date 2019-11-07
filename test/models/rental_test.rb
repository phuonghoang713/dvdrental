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

require 'test_helper'

class RentalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
