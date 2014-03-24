class VendorArea < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :service_area
end
