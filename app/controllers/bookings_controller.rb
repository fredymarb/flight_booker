class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight)

    params[:num_tickets].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = @booking.flight

    if @booking.save
      redirect_to @booking, notice: "Booking successfully created"
    else
      puts @booking.errors.full_messages
      render :new, status: :unprocessable_entity, alert: "Booking event failed."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(
      :flight_id,
      passengers_attributes: [ :name, :email ]
    )
  end
end
