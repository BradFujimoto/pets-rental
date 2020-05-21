class PetsController < ApplicationController

  before_action :find_pet, only: [ :show, :edit, :update, :destroy ]

  def index
    @pets = Pet.all.reverse
  end

  def show
    @booking = Booking.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.name = @pet.name.capitalize
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end


  def pet_params
    params.require(:pet).permit(:name, :species, :environment, :age, :price, :address, :user, :photo)
  end
end
