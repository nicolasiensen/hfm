require 'spec_helper'

describe ClientsController, type: :controller do
  describe "GET index" do
    before { controller.stub(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { get :index }
    it { expect(assigns(:client)).to be_a_new(Client) }
  end

  describe "POST create" do
    before { controller.stub(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { Client.stub(:create).and_return true }
    before { post :create, :client => {} }
    it { expect(response).to redirect_to(clients_path) }
    it { expect(flash[:notice]).to be_eql("Feito! Cliente inserido") }
  end
end
