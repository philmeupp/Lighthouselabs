require_relative 'spec_helper'


describe "SeigeEngine" do


  before do
    @seigeengine = SeigeEngine.new
  end

  it "should know its own attack_power(50)" do
    expect(@seigeengine.attack_power).to eq(50)
  end

  it "should know it's own health_points(400)" do
    expect(@seigeengine.health_points).to eq(400)
  end

  it "should reduce a seige engine's health ponts by its attack_power" do
    seige = SeigeEngine.new
    @seigeengine.attack!(seige)
    expect(seige.health_points).to eq(350)
  end

  describe "#attack!" do
    it "should double its damage against barracks health_points" do
    barracks = Barracks.new
    @seigeengine.attack!(barracks)
    expect(barracks.health_points).to eq(400)
  end

  it "should not attack a Peasant" do
    peasant = Peasant.new
    @seigeengine.attack!(peasant)
    expect(peasant.health_points).to eq(35)
  end

  it "should not attack a Footman" do
    footman = Footman.new
    @seigeengine.attack!(footman)
    expect(footman.health_points).to eq(60)
    end
  end
end