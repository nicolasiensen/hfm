Given /^there is a client called "([^"]*)"$/ do |arg1|
  Factory(:client, :name => arg1)
end

Given /^there is a company called "([^"]*)"$/ do |arg1|
  Factory(:company, :name => arg1)
end

Given /^there is an insurance$/ do
  Factory(:insurance)
end
