# coding: utf-8
class Company < ApplicationRecord
  has_many :insurances
  validates_uniqueness_of :name

  def value
    insurances.map{|i| i.value}.sum
  end

  def income
    insurances.map{|i| i.income}.sum
  end

  def report_by_month year
    insurances = Insurance.where(["start_at >= date('?-1-1') AND start_at <= date('?-12-31') AND company_id = ?", year, year, self.id])
    total = {}
    income = {}
    12.times do |m|
      total_sum = insurances.select{|i| i.start_at.month == m+1}.map{|i| i.value}.sum
      income_sum = insurances.select{|i| i.start_at.month == m+1}.map{|i| i.income}.sum
      total["#{m+1}"] = total_sum if total_sum > 0
      income["#{m+1}"] = income_sum if income_sum > 0
    end
    {"Total" => total, "Comissão" => income}
  end
end
