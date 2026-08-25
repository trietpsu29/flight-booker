class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
    @flight_dates = @flights.map { |flight| flight.start_datetime.to_date }.uniq
  end
end
