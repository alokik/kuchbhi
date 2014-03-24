require 'spec_helper'

describe Price do

  before { @price = Price.new(meal_id:0, time_plan_id: 0, mrp: 123) }

  subject { @price }

  it { should respond_to(:meal_id) }
  it { should respond_to(:time_plan_id) }
  it { should respond_to(:mrp) }
 
end