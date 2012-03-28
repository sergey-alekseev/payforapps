When /^I submit invalid register information$/ do
  click_button "Register"
end

When /^I submit valid register information$/ do
  fill_in "Email",    with: 'random@gmail.com'
  fill_in "Username",	with: 'random_user'
  fill_in "Password", with: 'somepass'
  fill_in "Password confirmation", with: 'somepass'
  click_button "Register"
end