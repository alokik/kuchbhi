# == Schema Information
#
# Table name: prices
#
#  id           :integer          not null, primary key
#  mrp          :integer
#  meal_id      :integer
#  time_plan_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Price do

  before { @price = Price.new(meal_id:0, time_plan_id: 0, mrp: 123) }

  subject { @price }

  it { should respond_to(:meal_id) }
  it { should respond_to(:time_plan_id) }
  it { should respond_to(:mrp) }
 
end
