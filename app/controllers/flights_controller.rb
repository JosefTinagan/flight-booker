class FlightsController < ApplicationController
	def index
		@to_options = Airport.all.map{ |a| [a.code, a.id] }
		@from_options = Airport.all.map { |a| [a.code, a.id] }
		@number_of_passengers = (1..4).to_a.map{ |num| [num,num]}
		@flight_dates = Flight.all.map{ |f| [f.start_date, f.id] }
	end
end
