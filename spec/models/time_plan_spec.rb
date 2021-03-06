# == Schema Information
#
# Table name: time_plans
#
#  id         :integer          not null, primary key
#  days       :integer
#  plan_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe TimePlan do

  before { @time_plan = TimePlan.new(name:"Example Name", meal_id: 0) }

  subject { @time_plan }

  it { should respond_to(:name) }
  it { should respond_to(:meal_id) }
 
end
