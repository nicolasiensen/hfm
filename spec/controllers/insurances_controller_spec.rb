require 'spec_helper'

describe InsurancesController, type: :controller do
  describe "GET index" do
    before { allow(controller).to receive(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { get :index }
    it { expect(assigns(:insurance)).to be_a_new(Insurance) }
  end

  describe "PUT update" do
    let(:insurance){ insurance = Insurance.new(start_at: Date.today, value: 1000, commission: 20) }
    before { allow(controller).to receive(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { allow(Insurance).to receive(:find).with("1").and_return(insurance) }
    before { put :update, :id => 1 }
    it { expect(response).to redirect_to(insurances_path) }
    it { expect(flash[:notice]).to be_eql("Woohoo! Seguro atualizado") }
  end
end
