Given /^somebody tries to visit admin sign up page$/ do
  visit '/admins/sign_up'
end

Then /^he should see admin sign in page$/ do
	page.should have_selector('h2', text: 'Sign in')
end
