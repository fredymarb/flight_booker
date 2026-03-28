class PassangerMailer < ApplicationMailer
  default from: "booking@example.com"

  def confirmation_email
    @passenger = params[:passenger]
    @flight = params[:flight]

    mail(
      to: @passenger.email,
      subject: "Booking Confirmation"
    )
  end
end
