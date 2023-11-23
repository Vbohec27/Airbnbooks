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
        redirect_to bookings_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    def calculate_price(start_date, end_date, price_per_day)
      days = (end_date - start_date).to_i
      price_per_day * days
    end

    def show_total_price
      @booking = Booking.find(params[booking_params])
      @total_price = calculate_price(@booking.start_date, @booking.end_date, @booking.book.price_per_day)
    end

    private

    def set_book
      @book = Book.find(params[:book_id])
    end

    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end
  end
