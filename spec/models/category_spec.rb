# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  vendor_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Category do

  before { @category = Category.new(vendor_id: 0, cat_name: "Example Vendor") }

  subject { @category }

  it { should respond_to(:vendor_id) }
  it { should respond_to(:cat_name) }
  
end
