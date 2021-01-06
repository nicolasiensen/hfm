class InsurancesController < ApplicationController
  load_and_authorize_resource

  def index
    @insurance = Insurance.new
    params[:report_type] = "income" if params[:report_type].nil?
  end

  def create
    insurance = Insurance.new(params[:insurance])

    if insurance.save
      redirect_to insurances_path, notice: "Feito! Seguro inserido"
    end
  end

  def update
    insurance = Insurance.find(params[:id])

    if insurance.update_attributes(params[:insurance])
      redirect_to insurances_path, :notice => "Woohoo! Seguro atualizado"
    end
  end

  def destroy
    insurance = Insurance.find(params[:id])

    if insurance.destroy
      redirect_to insurances_path, :notice => "Foi! Seguro removido"
    end
  end
end
