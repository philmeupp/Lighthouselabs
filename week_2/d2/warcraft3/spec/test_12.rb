require_relative 'spec_helper'

# # Units start off alive but they die if their HP hits 0 or lower. 
# # This is usually a result of receiving damage from combat.

# # Define a method #dead? on the Unit class. We add it to Unit instead of 
# # Footman because all Units can die, not just Footmans or Peasants.

describe 'Unit' do
  before  do
    @unit = Unit.new(10, 10)
  end
  
  it "return true if units health points are 0" do
  expect(@unit).to receive(:health_points).and_return(0)
  expect(@unit.is_dead?).to be true  
  end

  it "should return false if unit's health_points are above 0" do
    expect(@unit.is_dead?).to be false
  end

   it "should return false if unit it not dead" do
  expect(@unit).to receive(:health_points).and_return(10)
  expect(@unit.is_dead?).to be false
  end 
end
