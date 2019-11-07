# == Schema Information
#
# Table name: inventories
#
#  id          :integer          not null, primary key
#  film_id     :integer
#  store_id    :integer
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Inventory < ApplicationRecord
  belongs_to :store
  belongs_to :film
  has_one :rental
end
