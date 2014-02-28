# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  from       :date
#  to         :date
#  name       :string(255)
#  vendor_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Menu < ActiveRecord::Base
	has_many :items
	belongs_to :vendor
end
