require 'factory_girl'

Factory.define :user do |u|
  u.username 'username'
  u.email 'email@gmail.com'
  u.password 'password'
  u.password_confirmation 'password'
end
