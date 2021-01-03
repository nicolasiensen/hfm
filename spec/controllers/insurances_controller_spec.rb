require 'spec_helper'

describe InsurancesController do
  describe "GET index" do
    before { controller.stub(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { get :index }
    it { should assign_to(:insurance) }
  end

  describe "PUT update" do
    let(:insurance){ insurance = Insurance.new(start_at: Date.today, value: 1000, commission: 20) }
    before { controller.stub(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { Insurance.stub(:find).with("1").and_return(insurance) }
    before { put :update, :id => 1 }
    it { should redirect_to(insurances_path) }
    it { should set_the_flash.to("Woohoo! Seguro atualizado") }
  end
end
