class FlightsController < ApplicationController
	def index
		@to_options = Airport.all.map{ |a| [a.code, a.id] }
		@from_options = Airport.all.map { |a| [a.code, a.id] }
		@number_of_passengers = (1..4).to_a.map{ |num| [num,num]}
		@flight_dates = Flight.all.map{ |f| [f.start_date, f.id] }
	
		if params[:from_options]
			@date_format = params[:flight_date].in_time_zone.to_i
			@found = Flight.where('start_id = ? AND finish_id = ?', 
														params[:from_options], params[:to_options] )
			@found = @found.reject{ |r| r.start_date.to_i != @date_format }
			@passengers = params[:passengers]
		end


	end


end
