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
			flash[:info] = "You can always check your email to see your booking information!"
			@booking.passengers.each { |p| TicketMailer.booking_information(p).deliver_now }
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
