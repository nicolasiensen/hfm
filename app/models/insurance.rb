# coding: utf-8
class Insurance < ActiveRecord::Base
  KINDS = {
    :auto => "Auto", 
    :carta_verde => "Carta Verde", 
    :cartao => "Cartão", 
    :condominio => "Condomínio", 
    :empresarial => "Empresarial", 
    :fianca => "Fiança", 
    :previdencia => "Previdência", 
    :rc => "Responsabilidade Civil", 
    :residencia => "Residência", 
    :viagem => "Viagem", 
    :vida => "Vida"
  }

  before_save { self.end_at = self.start_at + 1.year }
  before_save { self.income = self.value * self.commission * 0.01 }

  belongs_to :client
  belongs_to :company

  scope :current, where("end_at >= ?", Date.today)

  def self.report_by_month type
    rs = ActiveRecord::Base.connection.execute "SELECT sum(#{type}), extract(year from start_at) as year, extract(month from start_at) as month  from insurances group by year, month order by year, month"
    rs.inject({}){|memo, i| memo.merge( memo[i["year"]].nil? ? {i["year"] => {i["month"] => i["sum"]}} : {i["year"] => memo[i["year"]].merge({i["month"] => i["sum"]} )}  ) }
  end
end
