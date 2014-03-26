# == Schema Information
#
# Table name: uaddresses
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  company_name   :string(255)
#  flat_no        :string(255)
#  street_address :string(255)
#  location       :string(255)
#  city           :string(255)
#  landmark       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Uaddress do

  before { @uaddress = Uaddress.new(user_id: 0, company_name:"Example Company", flat_no: "Example Flat",street_address:"Example Street", location:"Test Location", city:"Test City", landmark:"Example Landmark" ) }

  subject { @uaddress }
  it { should respond_to(:user_id) }
  it { should respond_to(:company_name) }
  it { should respond_to(:flat_no) }
  it { should respond_to(:street_address) }
  it { should respond_to(:location) }
  it { should respond_to(:city) }
  it { should respond_to(:landmark) }
end



