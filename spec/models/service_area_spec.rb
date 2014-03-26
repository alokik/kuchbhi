# == Schema Information
#
# Table name: service_areas
#
#  id         :integer          not null, primary key
#  location   :string(255)
#  pincode    :integer
#  city       :string(255)
#  vendor_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe ServiceArea do

  before { @service_area = ServiceArea.new(location:"Test Location", pincode: "Test pincode", city:"Test City", vendor_id: 0) }

  subject { @service_area }

  it { should respond_to(:location) }
  it { should respond_to(:pincode) }
  it { should respond_to(:city) }
  it { should respond_to(:vendor_id) }
  
end
