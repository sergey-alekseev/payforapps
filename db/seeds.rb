# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :username => 'First User', :email => 'user@example.com', :password => '123456', :password_confirmation => '123456'
puts 'New user created: ' << user.username

puts 'SETTING UP DEFAULT ADMIN'
admin = Admin.create! :email => 'admin1@example.com', :password => 'admin1', :password_confirmation => 'admin1'
puts 'Admin created: ' << admin.email
