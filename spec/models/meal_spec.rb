# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#  vendor_id   :integer
#  nonvegtag   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Meal do

  before { @meal = Meal.new(name: "Example Thali", category_id:0, vendor_id: 0, nonvegtag: "veg") }

  subject { @meal }

  it { should respond_to(:name) }
  it { should respond_to(:category_id) }
  it { should respond_to(:vendor_id) }
  it { should respond_to(:nonvegtag) }
  
end
