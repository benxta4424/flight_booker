class BookingsController < ApplicationController
  def index
    @bookings=Booking.all
  end

  def new
    @booking=Booking.new(flight_id: params[:radio_btn], passager_id: params[:passager_id])
  end

  def create
    @booking = Booking.new(flight_id: params[:radio_btn], passager_id: params[:passager_id])
    if @booking.save
      render :new
    else
      redirect_to new_passager_path(flight_id: @booking.flight_id)
    end
  end
end
private

def booking_params
  params.require(:booking).permit(:flight_id, :passager_id)
end
