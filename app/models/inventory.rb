class Inventory < ApplicationRecord
  belongs_to :store
  belongs_to :film
  has_one :rental
end
