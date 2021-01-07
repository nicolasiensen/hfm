require 'csv'

class ClientsController < ApplicationController
  load_and_authorize_resource

  def create
    client = Client.new(params[:client])

    if client.save
      redirect_to clients_path, notice: "Feito! Cliente inserido"
    end
  end

  def update
    client = Client.find(params[:id])

    if client.update_attributes(params[:client])
      redirect_to clients_path, :notice => "Feito! Cliente atualizado"
    end
  end

  def index
    @client = Client.new
    @clients = Client.all.sort{|a, b| b.total_income <=> a.total_income}
    respond_to :html, :csv
  end
end
