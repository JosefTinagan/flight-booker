class TicketMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.booking_information.subject
  #
  def booking_information(passenger)
    @passenger = passenger
    @booking = @passenger.bookings.last

    mail to: passenger.email, subject: "Booking Information"
  end
end
