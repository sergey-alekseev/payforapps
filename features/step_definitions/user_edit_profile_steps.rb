# Declarative step for user login
When /^I login as user$/ do
  steps %Q{
    When I have the user account
    And I go to the user login page
    And I submit valid login information
  }
end

When /^I submit changes without providing password$/ do
  click_button "Update"
end

# Declarative step for checking if the fields populated properly.
Then /^all profile fields must be populated properly$/ do
  steps %Q{
    Then the "Email" field should contain "#{@account.email}"
    Then the "Username" field should contain "#{@account.username}"
    Then the "Business name" field should contain "#{@account.po_info.name}"
    Then the "Address" field should contain "#{@account.po_info.address}"
    Then the "City" field should contain "#{@account.po_info.city}"
    Then the "State" field should contain "#{@account.po_info.state}"
    Then the "Zip code" field should contain "#{@account.po_info.zipcode}"
    Then the "Country" field should contain "#{@account.po_info.country}"
    Then the "Contact Phone" field should contain "#{@account.po_info.phone}"
    Then the "Contact Fax" field should contain "#{@account.po_info.fax}"
  }
end