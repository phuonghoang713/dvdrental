# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Country < ApplicationRecord
  has_many :cities
end
