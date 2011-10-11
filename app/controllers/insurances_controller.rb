class InsurancesController < InheritedResources::Base
  before_filter :only => [:index] { @insurance = Insurance.new; @client = Client.new }

  def create
    create! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Feito! Cliente inserido" }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Woohoo! Seguro atualizado" }
    end
  end
end
