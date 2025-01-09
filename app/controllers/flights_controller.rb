class FlightsController < ApplicationController
  def index
    @airports=Airport.all
    @flights=Flight.all

    @departure_airport=Airport.find_by(id: params[:current_location])
    @arrival_airport=Airport.find_by(id: params[:desired_location])
    @date = Flight.find_by(date: params[:flight_date])&.date

    @starting_location=@departure_airport&.name
    @ending_location=@arrival_airport&.name


    @found_flights=Flight.where(
      arrival_airport_id: @arrival_airport&.id,
      departure_airport_id: @departure_airport&.id,
    )
  end
end
