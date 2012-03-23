# When
When /user visits the logout page$/ do
  visit destroy_user_session_path
end
When /^user visits user dashboard$/ do
  visit dashboard_path
end
