require 'spec_helper'

describe Item do

  before { @item = Item.new(name: "Example User", description: "Example Description") }

  subject { @item }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
end