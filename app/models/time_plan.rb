# == Schema Information
#
# Table name: time_plans
#
#  id         :integer          not null, primary key
#  days       :integer
#  plan_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class TimePlan < ActiveRecord::Base
	has_and_belongs_to_many :meals
	has_many :prices
end
