# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  store_id   :integer
#  first_name :string
#  last_name  :string
#  email      :string
#  address_id :integer
#  activebool :boolean
#  active     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rentals
  has_many :payments
  belongs_to :address
  belongs_to :store
end
