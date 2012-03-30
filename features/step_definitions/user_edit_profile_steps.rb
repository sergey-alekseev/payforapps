Given /^I have the user account with valid po info$/ do
  step "I have the user account"
  @account.build_po_info
  @account.po_info.update_attributes!(@attr = {
      :name => "Joe",
      :address => "Wall street",
      :city => "New York",
      :state => "NY",
      :zipcode => "10011",
      :country => "Wall street",
      :phone => "\\+12125551212",
      :fax => "212-995-4070"
  })#Factory(:po_info, po_infoable_id: @account.id, po_infoable_type: 'User'
end

# Declarative step for user login
When /^I login as user$/ do
  steps %Q{
    When I go to the user login page
    And I submit valid login information
  }
end

When /^(?:|I )submit changes$/ do
  click_button "Update"
end

When /^(?:|I )submit changes without providing password$/ do
  step "submit changes"
end

When /^(?:|I )submit changes with providing password$/ do
  step %{I fill in "Current password" with "#{@account.password}"}
  step "submit changes"
end

When /^I fill in fields with new data$/ do
  steps %Q{
    When I fill in the following:
      | Email         | other@gmail.com |
      | Username      | other_user      |
      | Business name | John Other      |
      | Address       | other address   |
      | City          | other city      |
      | State         | other state     |
      | Zip code      | other zip code  |
      | Country       | other country   |
      | Contact Phone | other phone     |
      | Contact Fax   | other fax       |
  }
end

# Declarative step for checking if the fields populated properly.
Then /^all profile fields must be pre-filled properly$/ do
  steps %Q{
    Then the following fields should contain appropriate values:
      | Email         | #{@account.email}             |
      | Username      | #{@account.username}          |
      | Business name | #{@account.po_info.name}      |
      | Address       | #{@account.po_info.address}   |
      | City          | #{@account.po_info.city}      |
      | State         | #{@account.po_info.state}     |
      | Zip code      | #{@account.po_info.zipcode}   |
      | Country       | #{@account.po_info.country}   |
      | Contact Phone | #{@account.po_info.phone}     |
      | Contact Fax   | #{@account.po_info.fax}       |
  }
end

Then /^these fields should contain new data$/ do
  steps %Q{
    Then the following fields should contain appropriate values:
      | Email         | other@gmail.com |
      | Username      | other_user      |
      | Business name | John Other      |
      | Address       | other address   |
      | City          | other city      |
      | State         | other state     |
      | Zip code      | other zip code  |
      | Country       | other country   |
      | Contact Phone | other phone     |
      | Contact Fax   | other fax       |
  }
end