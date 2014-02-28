# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :text
#  vendor_id  :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Review < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :user
end
