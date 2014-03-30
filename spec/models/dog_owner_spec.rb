require 'spec_helper'

describe DogOwner do
	let (:valid_attrs){ {
			first_name: 'Julissa',
			last_name: 'Jansen',
			email: "julissa.jansen@gmail.com",
			dog_name: "Rory"
			} }
  describe 'validation' do
  	context "when given valid attributes" do
  		it "is valid" do
  			dog_owner = DogOwner.new(valid_attrs)
  		end
    end
  end


  it 'requires a first name' do
		dog_owner = DogOwner.new(valid_attrs.merge(first_name: ''))
  	expect(dog_owner).to_not be_valid
		expect(dog_owner.errors[:first_name]).to include "can't be blank"
	end

	it 'requires a last name' do
		dog_owner = DogOwner.new(valid_attrs.merge(last_name: ''))
    expect(dog_owner).to_not be_valid
		expect(dog_owner.errors[:last_name]).to include "can't be blank"
	end

  it 'requires an email' do
		dog_owner = DogOwner.new(valid_attrs.merge(email:''))
    expect(dog_owner).to_not be_valid
		expect(dog_owner.errors[:email]).to include "can't be blank"
	end
	

	it 'requires dog name' do
		dog_owner = DogOwner.new(valid_attrs.merge(dog_name: ''))
    expect(dog_owner).to_not be_valid
		expect(dog_owner.errors[:dog_name]).to include "can't be blank"
	end








end

