# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  menu_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Item < ActiveRecord::Base
belongs_to :menu
end
