# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  from         :date
#  to           :date
#  user_id      :integer
#  meal_id      :integer
#  time_plan_id :integer
#  uaddress_id  :integer
#  price_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :meal
	belongs_to :uaddress
	belongs_to :price
end
