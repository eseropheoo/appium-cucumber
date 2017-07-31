Given(/^I have a device available$/) do
  find_element(:id, 'com.example.android.contactmanager:id/addContactButton').displayed?
  

end

Then(/^I can open the contact manager app\.$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
