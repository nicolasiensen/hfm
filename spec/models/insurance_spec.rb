require 'spec_helper'

describe Insurance do
  describe ".report_by_month" do
    subject{ Insurance }

    context "when there is no insurance" do
      it "should return an empty hash" do
        subject.report_by_month("income").should be_== {}
      end
    end

    context "when there is some insurances" do
      before{ FactoryGirl.create(:insurance, :start_at => Date.parse("23/10/2011"), :value => 100, :commission => 20) }
      before{ FactoryGirl.create(:insurance, :start_at => Date.parse("10/10/2011"), :value => 100, :commission => 20) }
      before{ FactoryGirl.create(:insurance, :start_at => Date.parse("23/11/2011"), :value => 100, :commission => 20) }
      before{ FactoryGirl.create(:insurance, :start_at => Date.parse("23/11/2010"), :value => 100, :commission => 20) }
      it "should return some results" do
        subject.report_by_month("income").should be_== {"2011"=>{"10"=>"40.0", "11"=>"20.0"}, "2010"=>{"11"=>"20.0"}}
      end
    end
  end
end
