class Place < ActiveRecord::Base
  belongs_to :merchant
  has_many :products

  attr_accessible :address, :city, :desc, :name, :state, :zip
end
# == Schema Information
#
# Table name: places
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  desc        :text
#  address     :string(255)
#  zip         :integer
#  city        :string(255)
#  state       :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  merchant_id :integer
#

