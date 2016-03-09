require_relative 'spec_helper'
describe Unit do

  before :each do
    @unit = Unit.new(0, 3)
    @unit2= Unit.new(100, 3)
  end
  
    describe "#attack!" do

      it "A dead unit cannot attack another unit" do
        expect(@unit).to receive(:dead?).and_return(true)
        expect(@unit.attack!(@unit2)).to be_falsey
      end

      it "An alive unit cannot attack another dead unit" do
        expect(@unit).to receive(:dead?).and_return(true)
        expect(@unit2.attack!(@unit)).to be_falsey
      end
    end


end
