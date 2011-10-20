class InsurancesController < InheritedResources::Base
  before_filter :only => [:index] { @insurance = Insurance.new }

  def create
    create! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Feito! Seguro inserido" }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Woohoo! Seguro atualizado" }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Foi! Seguro removido" }
    end
  end

end
