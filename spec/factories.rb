require 'factory_girl'

Factory.define :user do |u|
  u.username 'username'
  u.email 'email@gmail.com'
  u.password 'password'
  u.password_confirmation 'password'
end

Factory.define :admin do |a|
  a.email 'admin@gmail.com'
  a.password 'password'
  a.password_confirmation 'password'
end

Factory.define :po_info do |po|
  po.name "Joe"
  po.address "Wall street"
  po.city "New York"
  po.state "NY"
  po.zipcode "10011"
  po.country "USA"
  po.phone "\\+12125551212"
  po.fax "212-995-4070"
  po.email "ny@gmail.com"
end