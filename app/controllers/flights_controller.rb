class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
    @flight_dates = @flights.map { |flight| flight.start_datetime.to_date }.uniq
    if params[:search].present? && params[:search].values.all?(&:present?)
      date = Date.parse(params[:search][:start_datetime])
      @flights = @flights.where(departure_airport: params[:search][:departure_airport],
      arrival_airport: params[:search][:arrival_airport], start_datetime: date.beginning_of_day..date.end_of_day)
    end
  end
end
