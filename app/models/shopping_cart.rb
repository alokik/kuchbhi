# == Schema Information
#
# Table name: shopping_carts
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class ShoppingCart < ActiveRecord::Base
	acts_as_shopping_cart
end
