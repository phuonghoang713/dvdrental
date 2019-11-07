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

class FilmCategory < ApplicationRecord
  belongs_to :category
  belongs_to :film
end
