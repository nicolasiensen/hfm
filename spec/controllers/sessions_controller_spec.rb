require 'spec_helper'

describe SessionsController, type: :controller do
  describe "GET new" do
    context "when it's already logged in" do
      before { allow(controller).to receive(:signed_in?).and_return(true) }
      before { get :new }
      it { should redirect_to root_path }
    end
  end
end
