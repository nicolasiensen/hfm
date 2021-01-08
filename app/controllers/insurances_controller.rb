class InsurancesController < ApplicationController
  def index
    authorize! :read, Insurance
    @insurance = Insurance.new
    params[:report_type] = "income" if params[:report_type].nil?
  end

  def create
    @insurance = Insurance.new(insurance_params)
    authorize! :create, @insurance

    if @insurance.save
      redirect_to insurances_path, notice: "Feito! Seguro inserido"
    end
  end

  def edit
    @insurance = Insurance.find(params[:id])
    authorize! :update, @insurance
  end

  def update
    @insurance = Insurance.find(params[:id])
    authorize! :update, @insurance

    if @insurance.update_attributes(insurance_params)
      redirect_to insurances_path, :notice => "Woohoo! Seguro atualizado"
    end
  end

  def destroy
    @insurance = Insurance.find(params[:id])
    authorize! :destroy, @insurance

    if @insurance.destroy
      redirect_to insurances_path, :notice => "Foi! Seguro removido"
    end
  end

  private

  def insurance_params
    params.permit(
      insurance: [
        :start_at,
        :client_id,
        :kind,
        :company_id,
        :value,
        :commission,
        :renovation,
        :endorsement
      ]
    )[:insurance]
  end
end