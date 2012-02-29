require 'factory_girl'

Factory.define :user do |u|
  u.username 'Test User'
  u.email 'user@test.com'
  u.password '123456'
  u.password_confirmation '123456'
end
