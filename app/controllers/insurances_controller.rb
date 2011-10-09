class InsurancesController < InheritedResources::Base
  before_filter :only => [:index] { @insurance = Insurance.new }
end
