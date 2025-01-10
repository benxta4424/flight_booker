class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all

    @departure_airport = Airport.find_by(id: params[:current_location])
    @arrival_airport = Airport.find_by(id: params[:desired_location])
    flight_date = Flight.find_by(date: params[:flight_date])&.date

    # Log parameters and parsed data
    Rails.logger.debug "Params Flight Date: #{params[:flight_date]}"
    Rails.logger.debug "Parsed Flight Date: #{flight_date}"
    Rails.logger.debug "Departure Airport: #{@departure_airport&.id}"
    Rails.logger.debug "Arrival Airport: #{@arrival_airport&.id}"

    if @departure_airport == @arrival_airport
      flash.now[:same_location] = "You can't fly to the same city!"
      return
    end

    @found_flights = Flight.where(
      date: flight_date,
      arrival_airport_id: @arrival_airport&.id,
      departure_airport_id: @departure_airport&.id
    )

    Rails.logger.debug "Found Flights: #{@found_flights.inspect}"

    if @found_flights.empty?
      flash.now[:error] = "No flights found!"
    end
  end
end
