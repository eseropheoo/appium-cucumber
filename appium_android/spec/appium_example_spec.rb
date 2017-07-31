require 'spec_helper'

describe 'Im going to text stuff' do 

	before(:all) do
		Appium::Driver.new(desired_capabilities).start_driver
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
	end

	after(:all) do
		driver.quit
	end

	# it "test stuff" do
	# 	binding.pry
	# end
	it 'App should load' do
        expect(find_element(:id, 'com.example.android.contactmanager:id/addContactButton').displayed?).to be true
    end

  it 'should respond to a button click and access the second screen' do
    # find_element(:id, 'com.example.android.contactmanager:id/addContactButton').click
    expect(button('Add Contact').click).to be true
  end

  it "should display input contact details page" do
  	expect(exists{button('Save')}).to be true
  end



  it 'should input name' do
    contact = find_element(:id, 'com.example.android.contactmanager:id/contactNameEditText')
    contact.send_keys('John Doe')
    j = textfields_exact('John Doe')
    expect(j.length).to be > 0
  end

  it "should input phone number " do
    phone = find_element(:id, 'com.example.android.contactmanager:id/contactPhoneEditText')
    phone.send_keys('078131234556')
  end

  it "should input email address" do
    email = find_element(:id, 'com.example.android.contactmanager:id/contactEmailEditText')
    email.send_keys('test@email.com')
  end

  
	
end