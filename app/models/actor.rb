# == Schema Information
#
# Table name: actors
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Actor < ApplicationRecord
  has_many :film_actors
end
