# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Vendor < ActiveRecord::Base
	has_many :categories
	has_many :service_areas
	has_many :meals
	has_many :orders
	has_one :vaddress
end
