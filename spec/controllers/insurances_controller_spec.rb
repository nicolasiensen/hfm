require 'spec_helper'

describe InsurancesController do
  describe "GET index" do
    before { get :index }
    it { should assign_to(:insurance) }
    it { should assign_to(:client) }
  end

  describe "PUT update" do
    before do 
      insurance = stub_model(Insurance, :start_at => Date.today, :value => 1000, :commission => 20)
      Insurance.stub(:find).with("1").and_return(insurance)
      put :update, :id => 1
    end
    it { should redirect_to(insurances_path) }
    it { should set_the_flash.to("Woohoo! Seguro atualizado") }
  end
end
