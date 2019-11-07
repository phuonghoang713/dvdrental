# == Schema Information
#
# Table name: film_categories
#
#  id          :integer          not null, primary key
#  film_id     :integer
#  category_id :integer
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class FilmCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
