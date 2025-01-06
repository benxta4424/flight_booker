class FlightsController < ApplicationController
  def index
    @airports=Airport.all
    @flights=Flight.all

    @starting_location=Airport.find(params[:current_location]).name
    @ending_location=Airport.find(params[:desired_location]).name
    @date=Flight.find(params[:date]).date
  end
end
