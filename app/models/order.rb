class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :vendor through :plans
end
