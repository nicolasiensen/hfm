class Client < ActiveRecord::Base
  has_many :insurances
  validates_uniqueness_of :name

  def total_income
    @total_income ||= Insurance.sum(:income, :conditions => ["client_id = ?", id])
  end
end
