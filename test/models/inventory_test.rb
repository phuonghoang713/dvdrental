# == Schema Information
#
# Table name: inventories
#
#  id          :integer          not null, primary key
#  film_id     :integer
#  store_id    :integer
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
