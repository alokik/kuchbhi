# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Vendor do

  before { @vendor = Vendor.new(name: "Example Vendor") }

  subject { @vendor }

  it { should respond_to(:name) }
  
end
