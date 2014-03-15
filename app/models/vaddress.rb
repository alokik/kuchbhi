# == Schema Information
#
# Table name: vaddresses
#
#  id             :integer          not null, primary key
#  vendor_id      :integer
#  bldg_no        :string(255)
#  street_address :string(255)
#  location       :string(255)
#  city           :string(255)
#  landmark       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Vaddress < ActiveRecord::Base
	belongs_to :vendor
end
