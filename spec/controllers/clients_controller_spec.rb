require 'spec_helper'

describe ClientsController, type: :controller do
  describe "GET index" do
    before { allow(controller).to receive(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { get :index }
    xit { expect(assigns(:client)).to be_a_new(Client) }
  end

  describe "POST create" do
    before { allow(controller).to receive(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { allow(Client).to receive(:create).and_return true }
    before { post :create, params: { client: {} } }
    it { expect(response).to redirect_to(clients_path) }
    it { expect(flash[:notice]).to be_eql("Feito! Cliente inserido") }
  end
end
