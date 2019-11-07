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

class FilmActor < ApplicationRecord
  belongs_to :actor
  belongs_to :film
end
