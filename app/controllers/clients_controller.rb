class ClientsController < InheritedResources::Base
  def create
    create! do |success, failure|
      success.html { redirect_to insurances_path, :notice => "Feito! Cliente inserido" }
    end
  end

  def index
    @clients = Client.all.sort{|a, b| b.total_income <=> a.total_income}
  end
end
