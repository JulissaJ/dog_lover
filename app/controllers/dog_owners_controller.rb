class DogOwnersController < ApplicationController


	def index
		@dog_owners = DogOwner.all
	end

	def show
		@dog_owner = DogOwner.find(params[:id])
	end

	def new
		@dog_owner = DogOwner.new 
	end

	def create
    @dog_owner = DogOwner.new(
      params.require(:dog_owner).permit(:first_name, :last_name, :email, :dog_name))
    @dog_owner.save!

    redirect_to dog_owner_path(@dog_owner), notice: "#{@dog_owner.first_name} successfully added."
  end
	


end