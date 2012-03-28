Then /^I should see an error message containing "([^"]*)"$/ do |message|
  page.should have_selector('#flash_alert', text: message)
end

Then /^I should see a notice message containing "([^"]*)"$/ do |message|
  page.should have_selector('#flash_notice', text: message)
end