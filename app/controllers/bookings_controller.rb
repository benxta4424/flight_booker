class BookingsController < ApplicationController
  def index
    @bookings=Booking.all
  end

  def new
    @booking=Booking.new(booking_params)
  end

  def create
    @booking=Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:bookings).permit(:flight_id, :passager_id)
  end
end
