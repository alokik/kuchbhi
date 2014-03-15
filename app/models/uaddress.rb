# == Schema Information
#
# Table name: uaddresses
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  company_name   :string(255)
#  flat_no        :string(255)
#  street_address :string(255)
#  location       :string(255)
#  city           :string(255)
#  landmark       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Uaddress < ActiveRecord::Base
	belongs_to :user
end
