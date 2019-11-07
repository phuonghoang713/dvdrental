# == Schema Information
#
# Table name: films
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  release_year     :string
#  language_id      :integer
#  rental_duration  :integer
#  rental_rate      :float
#  length           :integer
#  replacement_cost :integer
#  special_features :text             is an Array
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Film < ApplicationRecord
  has_one :film_category
  has_many :inventories
  has_many :film_actors
  belongs_to :language
end
