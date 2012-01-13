require 'spec_helper'

describe Company do
  describe "#income" do

    context "when there is no insurance" do
      its(:income){should be_zero}
    end

    context "when there is some insurances" do
      before { subject.stub(:insurances).and_return([mock_model(Insurance, :value => 1000), mock_model(Insurance, :value => 2000)]) }
      its(:income){should be_== 3000}
    end

  end
end
