class BookingsController < ApplicationController

	def new
		@flight = Flight.find(params[:flight])
		@booking = @flight.bookings.build
		params[:passenger_number].to_i.times { @booking.passengers.build }
	end

	def create
		@flight = Flight.find(params[:booking][:flight_id])
		@booking = @flight.bookings.build(booking_params)
		if @booking.save
			flash[:success] = "Booking succesful"
			redirect_to @booking
		else
			flash.now[:danger] = "Booking unsuccessful"
			render 'new'
		end
	end

	def show
		@booking = Booking.find(params[:id])
	end

	private

		def booking_params
			params.require(:booking).
				permit(passengers_attributes: [:name, :email])
		end
end
