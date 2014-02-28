class Menu < ActiveRecord::Base
	has_many :items
	belongs_to :vendor
end
