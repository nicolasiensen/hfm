class ClientsController < InheritedResources::Base
  def create
    create! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Feito! Cliente inserido" }
    end
  end
end
