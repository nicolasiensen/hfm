Given /^there is a client called "([^"]*)"$/ do |arg1|
  @client = create(:client, :name => arg1)
end

Given /^there is a company called "([^"]*)"$/ do |arg1|
  create(:company, :name => arg1)
end

Given /^there is an insurance$/ do
  create(:insurance)
end

Given /^there is an insurance for this client with the value of "([^"]*)" and commission of "([^"]*)"$/ do |arg1, arg2|
  create(:insurance, :client => @client, :value => arg1.to_f, :commission => arg2.to_f)
end

Given /^there is an insurance in the "([^"]*)" with the value of "([^"]*)"$/ do |arg1, arg2|
  create(:insurance, :company => (Company.find_by_name(arg1) || create(:company, :name => arg1)), :value => arg2.to_f)
end

Given /^I am logged in$/ do
  visit "/auth/facebook"
end

Then /^I should see "([^"]*)" before "([^"]*)"$/ do |arg1, arg2|
  page.body.should match(/#{arg1}[\s\w\d\W]*#{arg2}/)
end
