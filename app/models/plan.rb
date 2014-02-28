class Plan < ActiveRecord::Base
	belongs_to :vendor
	has_many :time_plans
end
