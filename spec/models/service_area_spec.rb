require 'spec_helper'

describe ServiceArea do

  before { @service_area = ServiceArea.new(location:"Test Location", pincode: "Test pincode", city:"Test City", vendor_id: 0) }

  subject { @service_area }

  it { should respond_to(:location) }
  it { should respond_to(:pincode) }
  it { should respond_to(:city) }
  it { should respond_to(:vendor_id) }
  
end