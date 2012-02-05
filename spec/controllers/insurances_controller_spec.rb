require 'spec_helper'

describe InsurancesController do
  describe "GET index" do
    before { controller.stub!(:current_user).and_return(mock_model(User, :nickname => "nicolas.iensen")) }
    before { get :index }
    it { should assign_to(:insurance) }
  end

  describe "PUT update" do
    let(:insurance){ insurance = stub_model(Insurance, :start_at => Date.today, :value => 1000, :commission => 20) }
    before { controller.stub!(:current_user).and_return(mock_model(User, :nickname => "nicolas.iensen")) }
    before { Insurance.stub(:find).with("1").and_return(insurance) }
    before { put :update, :id => 1 }
    it { should redirect_to(insurances_path) }
    it { should set_the_flash.to("Woohoo! Seguro atualizado") }
  end
end
