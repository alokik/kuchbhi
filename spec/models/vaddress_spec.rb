require 'spec_helper'

describe Vaddress do

  before { @vaddress = Vaddress.new(vendor_id: 0, bldg_no:"Example Building",street_address:"Example Street", location:"Test Location", city:"Test City", landmark: "Example Landmark") }

  subject { @vaddress }
  it { should respond_to(:vendor_id) }
  it { should respond_to(:company_name) }
  it { should respond_to(:flat_no) }
  it { should respond_to(:street_address) }
  it { should respond_to(:location) }
  it { should respond_to(:city) }
  it { should respond_to(:landmark) }
end





