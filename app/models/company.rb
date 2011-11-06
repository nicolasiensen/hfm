class Company < ActiveRecord::Base
  has_many :insurances
  validates_uniqueness_of :name
end
