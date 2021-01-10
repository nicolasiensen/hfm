class Client < ApplicationRecord
  has_many :insurances
  validates_uniqueness_of :name

  def total_income
    @total_income ||= Insurance.where(client_id: id).where("start_at >= ?", 12.months.ago).sum(:income)
  end
end
