# == Schema Information
#
# Table name: service_areas
#
#  id         :integer          not null, primary key
#  location   :string(255)
#  pincode    :integer
#  city       :string(255)
#  vendor_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class ServiceArea < ActiveRecord::Base
	has_many :vendor_areas
	has_many :vendors, through: :vendor_areas
	accepts_nested_attributes_for :vendor_areas, :allow_destroy => true
	validates :vendor_id, presence: true

	def name
    return self.location
	end
	
	def self.search(searchcity, searchloc, searchpincode )
		if searchcity
			if searchloc
				if searchpincode
					find(:all, :conditions => ['city LIKE ? AND location LIKE ? AND pincode LIKE ?', "%#{searchcity}%", "%#{searchloc}%","%#{searchpincode}%"])
				else
					find(:all, :conditions => ['city LIKE ? AND location LIKE ?', "%#{searchcity}%", "%#{searchloc}%"])
				end
			else
				if searchpincode
					find(:all, :conditions => ['city LIKE ? AND pincode LIKE ?', "%#{searchcity}%","%#{searchpincode}%"])
				else
					find(:all, :conditions => ['city LIKE ?', "%#{searchcity}%"])
				end
			end
		else
			if searchloc
				if searchpincode
					find(:all, :conditions => ['location LIKE ? AND pincode LIKE ?', "%#{searchloc}%","%#{searchpincode}%"])
				else
					find(:all, :conditions => ['location LIKE ?', "%#{searchloc}%"])
				end
			else
				if searchpincode
					find(:all, :conditions => ['pincode LIKE ?', "%#{searchpincode}%"])
				else
					find(:all)
				end
			end
		end
	end

end