class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = User.first #to be changed to current_user
    if @pet.save
      redirect_to pets_path
    else
      render 'new'
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :environment, :age, :price, :address, :user)
  end
end
