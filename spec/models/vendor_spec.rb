require 'spec_helper'

describe Vendor do

  before { @vendor = Vendor.new(name: "Example Vendor") }

  subject { @vendor }

  it { should respond_to(:name) }
  
end