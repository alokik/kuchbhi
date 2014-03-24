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
	has_many :vendor_areas
	has_many :service_areas, through: :vendor_areas
	has_many :meals
	has_many :orders
	has_one  :vaddress
	accepts_nested_attributes_for :vendor_areas, :allow_destroy => true
end
