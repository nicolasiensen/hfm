require 'csv'

class ClientsController < InheritedResources::Base
  before_filter :only => [:index] { @client = Client.new }
  
  def create
    create! do |success, failure|
      success.html { redirect_to clients_path, :notice => "Feito! Cliente inserido" }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to clients_path, :notice => "Feito! Cliente atualizado" }
    end
  end

  def index
    @clients = Client.all.sort{|a, b| b.total_income <=> a.total_income}
    respond_to :html, :csv
  end
end
