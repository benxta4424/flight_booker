class BookingsController < ApplicationController
  def index
    @bookings=Booking.all
  end

  def new
    @flight=Flight.find_by(id: params[:flight_id])
    @passager=Passager.new
  end

  def create
    @flight=Flight.find_by(id: params[:passager][:flight_id])

    if @flight.nil?
      flash[:no_flight]="The flight has not been found!"
      redirect_to flights_path and return
    end

    # if the email exists in the database we cannot create another booking for the same email
    @passager=Passager.find_or_initialize_by(email: params[:passager][:email]) do |passager|
      passager.name=params[:passager][:name]
    end

    if @passager.save
      flash[:saved_passager]="Passager created succesfully!"
      PassagerMailer.with(passager: @passager).welcome_mail.deliver_now
      @booking=Booking.new(flight_id: @flight.id, passager_id: @passager.id)

      if @booking.save
        flash[:saved_booking]="Booking succesfully saved!"
        redirect_to booking_path(@booking.id)
      else
        flash[:unsaved_booking]="Please add a Booking!"
        render :new
      end

    else
      flash[:create_passager]="Please create a passager!"
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
