class Company < ActiveRecord::Base
  has_many :insurances
  validates_uniqueness_of :name

  def income
    insurances.map{|i| i.value}.sum
  end
end
