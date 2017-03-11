class Flight < ApplicationRecord
	has_many :bookings

	belongs_to :from_airport, :foreign_key => "start_id", :class_name => "Airport"
	belongs_to :to_airport,   :foreign_key => "finish_id", :class_name => "Airport"

	def self.get_dates
		flight_date = Flight.find_by_sql("SELECT start_date FROM flights")
	end

	def date_formatted
		start_date.strftime("%m/%d/%Y")
	end

	def self.search_flight(params)
		#flights = Flight.
	end
end
