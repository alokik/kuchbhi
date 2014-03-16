# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#  vendor_id   :integer
#  nonvegtag   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Meal < ActiveRecord::Base
	belongs_to :vendor
	has_and_belongs_to_many :time_plans
	has_and_belongs_to_many :items
	has_many :orders
	has_many :prices
end
