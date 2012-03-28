#Given
Given /^I have the (.+) account$/ do |name|
  @account = FactoryGirl.create(name)
end

#When
When /^I submit invalid (login|sign in) information$/ do |name|
  click_button "#{name.capitalize}"
end

When /^I submit valid (login|sign in) information$/ do |name|
  fill_in "Email",    with: @account.email
  fill_in "Password", with: @account.password
  click_button "#{name.capitalize}"
end