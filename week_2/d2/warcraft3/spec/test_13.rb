require_relative 'spec_helper'
# A dead Unit cannot attack another Unit. Conversely, an alive Unit will also 
# not attack another Unit that is already dead.




describe 'Unit' do

  describe "#attack!" do
    before do
      @enemy = Unit.new(10,10)
      @unit = Unit.new(10,10)
    end

    it "should not attack enemy if unit dead" do
      expect(@unit).to receive(:is_dead?).and_return true
      @unit.attack!(@enemy)
      expect(@enemy.health_points).to eq(10)
    end

    it "should not attack a enemy if enemy dead" do
      expect(@enemy).to receive(:is_dead?).and_return true
      @unit.attack!(@enemy)
      expect(@enemy.health_points).to eq(10)
    end
  end
end 