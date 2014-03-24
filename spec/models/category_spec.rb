require 'spec_helper'

describe Category do

  before { @category = Category.new(vendor_id: 0, cat_name: "Example Vendor") }

  subject { @category }

  it { should respond_to(:vendor_id) }
  it { should respond_to(:cat_name) }
  
end