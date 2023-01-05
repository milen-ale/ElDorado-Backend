class Api::V1::BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: current_user.bookings.all
  end

  def create
    booking = Booking.new(booking_params)
    if booking.save!
      render json: { message: 'Car has been successfully booked' }, status: :created
    else
      render json: { error: 'ERROR: Unable to book the car' }, status: :unprocessable_entity
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy

    if booking.destroy
      render json: { message: 'Booking successfully canceled' }, status: :ok
    else
      render json: { error: 'ERROR: Unable to cancel the booking' }, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking)
      .permit(:pickup_date, :return_date, :car_id)
      .with_defaults(user_id: current_user.id)
  end
end
