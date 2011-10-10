require 'spec_helper'

describe InsurancesController do
  describe "GET index" do
    before { get :index }
    it { should assign_to(:insurance) }
    it { should assign_to(:client) }
  end
end
