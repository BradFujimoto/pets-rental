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
              flash[:notice] = "Your booking has been submitted"
                redirect_to dashboard_path
            else
                @booking = Booking.new
                render "pets/show"
            end
    end

    def validate
      @booking = Booking.find(params[:booking_id])
      @booking.validated = true
      if @booking.save
        redirect_to dashboard_path
      else
        flash[:alert] = "Sorry you cannot validate this booking. Please contact your administrator."
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to dashboard_path
    end

private

    def booking_params
        params.require(:booking).permit(:date_start, :date_end, :user, :pet, :validated)
    end


end
