Then /^I should see an error explanation containing "([^"]*)"$/ do |message|
  page.should have_selector('#error_explanation', text: message)
end