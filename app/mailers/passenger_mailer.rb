class PassengerMailer < ApplicationMailer
  def confirmation_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: "Booking confirmation")
  end
end
