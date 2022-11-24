class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    @bookings = current_user.bookings.order(updated_at: :desc)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.planet = Planet.find(params[:planet_id])
    @booking.user = current_user
    @booking.total_price = (@booking.departure_date - @booking.arrival_date) * @booking.planet.price_per_millenia
    if @booking.save!
      redirect_to bookings_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def rate
  end

  def destroy
    @bookings.delete
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end
