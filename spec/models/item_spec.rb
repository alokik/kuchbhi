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

require 'spec_helper'

describe Item do

  before { @item = Item.new(name: "Example User", description: "Example Description") }

  subject { @item }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
end
