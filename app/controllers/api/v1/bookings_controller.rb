class Api::V1::BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: current_user.bookings.includes([:car]).order(id: :desc), status: :ok
  end

  def create
    booking = Booking.new(booking_params)
    if booking.car.user == current_user
      render json: {
        status: 422,
        error: 'ERROR: You cannot book your own car'
      }, status: :unprocessable_entity
    elsif booking.save!
      render json: {
        status: 201,
        message: 'Car has been successfully booked',
        data: BookingSerializer.new(booking)
      }, status: :created
    else
      render json: { error: 'ERROR: Unable to book the car' }, status: :unprocessable_entity
    end
  end

  def destroy
    booking = Booking.find(params[:id])

    if booking.destroy
      render json: {
        status: 200,
        message: 'Booking successfully canceled',
        data: BookingSerializer.new(booking)
      }, status: :ok
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
