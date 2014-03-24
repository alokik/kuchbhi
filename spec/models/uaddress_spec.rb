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



