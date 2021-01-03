require 'spec_helper'

describe SessionsController do
  describe "GET new" do
    context "when it's already logged in" do
      before { controller.stub(:signed_in?).and_return(true) }
      before { get :new }
      it { should redirect_to root_path }
    end
  end
end
