class DogOwnersController < ApplicationController

	def new
		@dog_owner = DogOwner.new 
	end


end