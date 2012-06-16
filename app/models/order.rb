class Order < ActiveRecord::Base
  belongs_to :products
  belongs_to :merchants
  belongs_to :customers
  attr_accessible :merchant_id, :customer_id
end
# == Schema Information
#
# Table name: orders
#
#  id          :integer         not null, primary key
#  beverage_id :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  customer_id :integer
#  merchant_id :integer
#  product_id  :integer
#  redeemed    :boolean         default(FALSE)
#

