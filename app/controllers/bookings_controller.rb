class BookingsController < ApplicationController
  def index
    @bookings=Booking.all
  end

  def new
    @booking=Booking.new(flight_id: params[:radio_btn], passager_id: params[:passager_id])
  end

  def create
    @booking=Booking.new(flight_id: params[:radio_btn], passager_id: params[:passager_id])
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to new_booking_path
    end
  end
end
