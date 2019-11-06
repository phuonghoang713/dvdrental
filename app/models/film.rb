class Film < ApplicationRecord
  has_one :film_category
  has_many :inventories
  has_many :film_actors
  belongs_to :language
end
