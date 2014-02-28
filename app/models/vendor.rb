class Vendor < ActiveRecord::Base
	has_many :menus
	has_many :service_areas
	has_many :plans
	has_many :orders through :plans
end
