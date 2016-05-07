require_relative 'spec_helper'


describe 'Robot' do
  before :each do
    @robot = Robot.new
  end

  describe "#heal!" do
    it "should not heal a dead bot" do
      @robot.health = 0
      expect{@robot.heal!}.to raise_error
    end
  end
end
