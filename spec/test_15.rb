require_relative 'spec_helper'

describe SiegeEngine do 
  before :each do
    @siege_engine = SiegeEngine.new
    @siege_engine2 = SiegeEngine.new
    @Barracks = Barracks.new
    @unit = Unit.new(100,50)
  end

  it "starts with AP 50" do
    expect(@siege_engine.attack_power).to eq(50)
  end

  it "starts with HP 400" do
    expect(@siege_engine.health_points).to eq(400)
  end

  it "starts with 200 gold" do
    expect(@siege_engine.gold).to eq(200)
  end

  it "starts with 60 lumber" do
    expect(@siege_engine.lumber).to eq(60)
  end

  it "starts with 3 food" do
    expect(@siege_engine.food).to eq(3)
  end

  describe "#attack!" do
    it "should do twice damage to Barracks than Footman's" do
      @siege_engine.attack!(@Barracks)
      expect(@Barracks.health_points).to eq(400)
    end

    it "A SiegeEngine cannot attack a Unit" do
      @siege_engine.attack!(@unit)
      # expect(@unit).to receive(:attack!).and_return(false)
      expect(@siege_engine.attack!(@unit)).to be_falsey
    end
    
    it "SiegeEngine can attack another SiegeEngine" do
      @siege_engine.attack!(@siege_engine2)
      expect(@siege_engine2.health_points).to eq(350)
    end

  end

  
end