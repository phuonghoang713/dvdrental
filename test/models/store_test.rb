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

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
