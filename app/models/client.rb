class Client < ApplicationRecord
  has_many :insurances
  validates_uniqueness_of :name
end
