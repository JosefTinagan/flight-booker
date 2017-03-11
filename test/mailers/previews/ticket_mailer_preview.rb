# Preview all emails at http://localhost:3000/rails/mailers/ticket_mailer
class TicketMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ticket_mailer/booking_information
  def booking_information
  	passenger = Passenger.first
    TicketMailer.booking_information(passenger)
  end

end
