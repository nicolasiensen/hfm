require 'spec_helper'

describe ClientsController do
  describe "GET index" do
    before { controller.stub(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { get :index }
    it { should assign_to(:client) }
  end

  describe "POST create" do
    before { controller.stub(:current_user).and_return(User.new(nickname: "nicolas.iensen@gmail.com")) }
    before { Client.stub(:create).and_return true }
    before { post :create, :client => {} }
    it { should redirect_to(clients_path) }
    it { should set_the_flash.to("Feito! Cliente inserido") }
  end
end
