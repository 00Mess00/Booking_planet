class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def rate
  end

  def destroy
    @bookings.delete
  end
end
