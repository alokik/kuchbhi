require 'spec_helper'

describe Meal do

  before { @meal = Meal.new(name: "Example Thali", category_id:0, vendor_id: 0, nonvegtag: "veg") }

  subject { @meal }

  it { should respond_to(:name) }
  it { should respond_to(:category_id) }
  it { should respond_to(:vendor_id) }
  it { should respond_to(:nonvegtag) }
  
end