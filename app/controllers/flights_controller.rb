class FlightsController < ApplicationController
  def index
    @airports = Airport.order(:code)

    # Get unique flight dates
    @available_dates = Flight
      .where("start_datetime >= ?", Date.today.beginning_of_day)
      .pluck(:start_datetime)
      .map(&:to_date)
      .uniq
      .sort

    if search_params_present?
      @num_tickets = params[:num_tickets]

      @flights = Flight.where(
        params[:departure_airport_id],
        params[:arrival_airport_id],
        Date.parse(params[:start_datetime]).all_day
      )
    else
      @flights = []
    end
  end

  private

  def search_params_present?
    params[:departure_airport_id].present? &&
    params[:arrival_airport_id].present? &&
    params[:start_datetime].present?
  end
end
