class Booking < ApplicationRecord
	has_many :booking_passengers
	has_many :passengers, :through => :booking_passengers
	belongs_to :flight

	accepts_nested_attributes_for :passengers
end
