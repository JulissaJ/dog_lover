require 'spec_helper'

feature "user wants to connect with other dog lovers %Q{
As a dog owner
I want to register my dog
So that I can connect with other dog lovers
}" do
	

#Acceptance Criteria

# I must specify a first name
# I must specify a last name
# I must specify an email address
# I must specify a dog name

	context "with valid attributes do" do
		it 'creates a new contact' do
			visit '/dog_owners/new'

			fill_in "First Name", with: "Julissa"
			fill_in "Last Name", with: "Jansen"
			fill_in "Email", with: "julissa.jansen@gmail.com"
			fill_in "Dog's name", with: "Rory"
			click_on "Create Dog Owner"

			expect(page).to have_content "Contact was successfully created"
		end
	end
end