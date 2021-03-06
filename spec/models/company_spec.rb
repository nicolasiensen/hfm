# coding: utf-8
require 'spec_helper'

describe Company do

  describe "#income" do
    context "when there is no insurance" do
      it { expect(subject.income).to be_zero }
    end

    context "when there is some insurances" do
      before { allow(subject).to receive(:insurances).and_return([Insurance.new(income: 1000), Insurance.new(income: 2000)]) }
      it { expect(subject.income).to be_eql(3000) }
    end
  end

  describe "#value" do
    context "when there is no insurance" do
      it { expect(subject.value).to be_zero }
    end

    context "when there is some insurances" do
      before { allow(subject).to receive(:insurances).and_return([Insurance.new(value: 1000), Insurance.new(value: 2000)]) }
      it { expect(subject.value).to be_eql(3000) }
    end
  end

  describe "#report_by_month" do
    context "when there is no insurance" do
      it "should return an empty hash" do
        expect(subject.report_by_month(2011)).to be_eql({"Total"=>{}, "Comissão"=>{}})
      end
    end
    context "when there is some insurances" do
      before{ FactoryBot.create(:insurance, :start_at => Date.parse("23/10/2011"), :value => 100, :commission => 20, :company => subject) }
      before{ FactoryBot.create(:insurance, :start_at => Date.parse("10/10/2011"), :value => 100, :commission => 20, :company => subject) }
      before{ FactoryBot.create(:insurance, :start_at => Date.parse("23/11/2011"), :value => 50, :commission => 20, :company => subject) }
      before{ FactoryBot.create(:insurance, :start_at => Date.parse("23/11/2011"), :value => 100, :commission => 20, :company => subject) }
      before{ FactoryBot.create(:insurance, :start_at => Date.parse("23/11/2011"), :value => 100, :commission => 20) }
      it "should return a hash" do
        expect(subject.report_by_month(2011)).to be_eql({"Total"=>{"10"=>200.0, "11"=>150.0}, "Comissão"=>{"10"=>40.0, "11"=>30.0}})
      end
    end
  end

end
