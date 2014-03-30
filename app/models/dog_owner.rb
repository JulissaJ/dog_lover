class DogOwner < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :dog_name, presence: true
end
