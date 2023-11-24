class BookingsController < ApplicationController
    before_action :set_book, only: %i[show new create]

    def index
      @bookings = Booking.all
    end

    def show
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.book = @book
      @booking.user = current_user
      if @booking.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def set_book
      @book = Book.find(params[:book_id])
    end

    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :sum_price)
    end
  end
