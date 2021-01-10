class Client < ApplicationRecord
  has_many :insurances
  validates_uniqueness_of :name

  def total_income
    @total_income ||= Insurance.where(client_id: id).sum(:income)
  end
end
