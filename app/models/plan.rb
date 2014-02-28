# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  menu_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Plan < ActiveRecord::Base
	belongs_to :vendor
	has_many :time_plans
end
