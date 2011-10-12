Given /^there is a client called "([^"]*)"$/ do |arg1|
  @client = Factory(:client, :name => arg1)
end

Given /^there is a company called "([^"]*)"$/ do |arg1|
  Factory(:company, :name => arg1)
end

Given /^there is an insurance$/ do
  Factory(:insurance)
end

Given /^there is an insurance for this client with the value of "([^"]*)" and commission of "([^"]*)"$/ do |arg1, arg2|
  Factory(:insurance, :client => @client, :value => arg1.to_f, :commission => arg2.to_f)
end

Then /^I should see "([^"]*)" before "([^"]*)"$/ do |arg1, arg2|
  page.body.should match(/#{arg1}[\s\w\d\W]*#{arg2}/)
end
