class PetsController < ApplicationController

  before_action :find_pet, only: [ :show, :edit, :update, :destroy ]

  def index
    @pets = Pet.order(created_at: :desc)
    if params[:filter]
      @pets = @pets.where(species: params[:filter][:species])
    end
  end

  def show
    @booking = Booking.new
    @pet = Pet.geocoded
    @markers =
      {
        lat: @pet.latitude,
        lng: @pet.longitude
      }
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
    redirect_to dashboard_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end


  def pet_params
    params.require(:pet).permit(:name, :species, :age, :price, :address, :user, :photo, :environment)
  end
end
