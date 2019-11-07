# == Schema Information
#
# Table name: languages
#
#  id          :integer          not null, primary key
#  name        :string
#  last_update :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Language < ApplicationRecord
  has_many :films
end
