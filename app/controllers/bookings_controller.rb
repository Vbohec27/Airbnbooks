class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show ]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.find(booking_params)
    if @booking.save
      redirect_to bookings_path, notice: "Booking was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
