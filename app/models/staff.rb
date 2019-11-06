class Staff < ApplicationRecord
  belongs_to :store
  belongs_to :address
end
