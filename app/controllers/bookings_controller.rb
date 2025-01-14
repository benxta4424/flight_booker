class BookingsController < ApplicationController
  def index
    @bookings=Booking.all
  end

  def new
    @booking=Booking.new
  end

  def create
    @booking = Booking.new(flight_id: params[:radio_btn], passager_id: params[:passager_id])
    if @booking.save
      flash[:success]="Booking succesfully created!"
      redirect_to bookings_path(@booking.id)
    else
      flash[:booking_error]="Unsuccessful booking! Try again!"
      redirect_to new_passager_path(flight_id: @booking.flight_id)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
