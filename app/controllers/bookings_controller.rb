class BookingsController < ApplicationController


    def new
        @pet = Pet.find(params[:pet_id])
        @booking = Booking.new
    end

    def create
        @pet = Pet.find(params[:pet_id])
        @booking = Booking.new(booking_params)
        @booking.pet = @pet 
        @booking.user = current_user
            if @booking.save
                redirect_to pet_path(@pet)
            else
                raise
                @booking = Booking.new
                render "pets/show"
            end
    end

private

    def booking_params
        params.require(:booking).permit(:date_start, :date_end, :user, :pet)
    end


end
