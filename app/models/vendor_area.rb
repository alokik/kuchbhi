# == Schema Information
#
# Table name: vendor_areas
#
#  id              :integer          not null, primary key
#  vendor_id       :integer
#  service_area_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class VendorArea < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :service_area
end
