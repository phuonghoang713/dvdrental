# == Schema Information
#
# Table name: staffs
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  username    :string
#  password    :string
#  address_id  :integer
#  email       :string
#  store_id    :integer
#  active      :boolean
#  last_update :datetime
#  picture     :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class StaffTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
