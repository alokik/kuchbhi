# == Schema Information
#
# Table name: prices
#
#  id           :integer          not null, primary key
#  mrp          :integer
#  meal_id      :integer
#  time_plan_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Price < ActiveRecord::Base
	belongs_to :meal
	belongs_to :time_plan
	has_many :orders

end
