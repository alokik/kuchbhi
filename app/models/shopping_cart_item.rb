# == Schema Information
#
# Table name: shopping_cart_items
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  owner_type :string(255)
#  quantity   :integer
#  item_id    :integer
#  item_type  :string(255)
#  price      :float
#  created_at :datetime
#  updated_at :datetime
#

class ShoppingCartItem < ActiveRecord::Base
	acts_as_shopping_cart_item
end
