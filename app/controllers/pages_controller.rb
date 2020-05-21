class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @my_pets = current_user.pets
    @my_bookings = current_user.bookings
    @client_bookings = current_user.client_bookings
  end
end
