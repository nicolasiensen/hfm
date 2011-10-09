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
end
