require_relative 'spec_helper'

describe Barracks do

  before :each do 
    @Barracks = Barracks.new
  end

  it "starts off with 500 HP" do
    expect(@Barracks.health_points).to eq(500)
  end  
end

describe Footman do
  before :each do
    @Footman = Footman.new
    @Barracks = Barracks.new
  end

  # describe "#attack!" do
  #   it "should only do half AP damage to Barracks " do
  #     @Footman.attack!(@Barracks)
  #     expect(@Barracks.health_points).to eq(495)
  #   end
  # end

end