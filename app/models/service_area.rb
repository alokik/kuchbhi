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
end
