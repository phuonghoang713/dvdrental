# == Schema Information
#
# Table name: staffs
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  username    :string
#  password    :string
#  address_id  :integer
#  email       :string
#  store_id    :integer
#  active      :boolean
#  last_update :datetime
#  picture     :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :store
  belongs_to :address
  has_many :rentals
  has_many :payments
end
