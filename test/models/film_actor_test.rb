# == Schema Information
#
# Table name: film_actors
#
#  id          :integer          not null, primary key
#  actor_id    :integer
#  film_id     :integer
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class FilmActorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
