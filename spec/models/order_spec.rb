require 'spec_helper'

describe Order do

  before { @order = Order.new (from: Time.now.strftime("%m/%d/%Y"), to: Time.now.strftime("%m/%d/%Y"), user_id:0, meal_id: 0, time_plan_id:0, uaddress_id:0, price_id:0) }

  subject { @order }

  it { should respond_to(:from) }
  it { should respond_to(:to) }
  it { should respond_to(:user_id) }
  it { should respond_to(:meal_id) }  
  it { should respond_to(:time_plan_id) }
  it { should respond_to(:uaddress_id) }  
  it { should respond_to(:price_id) }
   
end