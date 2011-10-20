require 'spec_helper'

describe ClientsController do
  describe "GET index" do
    before { get :index }
    it { should assign_to(:client) }
  end

  describe "POST create" do
    before do
      Client.stub(:create).and_return true
      post :create, :client => {}
    end
    it { should redirect_to(clients_path) } 
    it { should set_the_flash.to("Feito! Cliente inserido") } 
  end
end
