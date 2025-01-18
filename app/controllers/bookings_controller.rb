class BookingsController < ApplicationController
  def index
    @bookings=Booking.all
  end

  def new
    @flight=Flight.find_by(id: params[:flight_id])
    @booking=Booking.new
  end

  def create
    @flight=Flight.find_by(id: params[:flight_id])

    if params[:name].present? && params[:email].present?
      # creating the passager
      flash.now[:success_passager]="You've succesfully created the Passager!"
      @passager=Passager.create(name: params[:name], email: params[:email])
    else
      render :new
      flash.now[:failure_passager]="You've failed to create the Passager!"
    end

    if @passager.present? && @flight.present?
      @booking = Booking.new(flight_id: @flight.id, passager_id: @passager.id)
    end

    if @booking.present?
      if @booking.save
        flash[:success]="Booking succesfully created!"
        redirect_to booking_path(@booking.id)
      else
        flash[:booking_error]="Unsuccessful booking! Try again!"
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
