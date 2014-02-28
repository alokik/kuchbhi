# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  from       :date
#  to         :date
#  user_id    :integer
#  plan_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Order < ActiveRecord::Base
	belongs_to :user
	
end
