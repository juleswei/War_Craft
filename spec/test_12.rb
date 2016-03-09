require_relative 'spec_helper'



describe Unit do
  
  before :each do
    @unit = Unit.new(0,50)
  end

  describe "#dead?" do 
    it "if HP is 0 or less, #dead is true" do
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.dead?).to be_truthy
    end
    it "if HP is more than 0, #dead is false" do
      expect(@unit).to receive(:health_points).and_return(10)
      expect(@unit.dead?).to be_falsey
    end


  end

end