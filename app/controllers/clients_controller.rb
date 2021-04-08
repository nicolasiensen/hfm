require 'csv'

class ClientsController < ApplicationController
  def create
    @client = Client.new(client_params)
    authorize! :create, @client

    if @client.save
      redirect_to clients_path, notice: "Feito! Cliente inserido"
    end
  end

  def edit
    @client = Client.find(params[:id])
    authorize! :update, @client
  end

  def update
    @client = Client.find(params[:id])
    authorize! :update, @client

    if @client.update_attributes(client_params)
      redirect_to clients_path, :notice => "Feito! Cliente atualizado"
    end
  end

  def index
    authorize! :read, Client

    @client = Client.new
    @clients = Client.select("clients.*, coalesce(sum(insurances.income), 0) as total_income").left_outer_joins(:insurances).group("clients.id").order("total_income DESC")
    respond_to :html, :csv
  end

  private

  def client_params
    params.permit(client: [:name, :email])[:client]
  end
end
