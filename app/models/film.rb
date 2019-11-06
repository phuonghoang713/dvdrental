class Film < ApplicationRecord
  has_one :film_category
  has_many :inventory
  has_many :film_actor
  belong_to :language
end
