# Aside from gold and food, there is also the concept of lumber. 
# Add lumber as a resource that a Barracks can handle.

# A Barracks starts off with 500 lumber.



require_relative 'spec_helper'


describe 'Barracks' do

    it 'starts off with 500 lumber' do
    building = Barracks.new
    expect(building.lumber).to eq(500)
  end
end