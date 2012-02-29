def full_title(page_title)
  base_title = "Payforapps"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def valid_login(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Login"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('#flash_alert', text: message)
  end
end
