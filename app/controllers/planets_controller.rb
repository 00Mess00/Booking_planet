class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.owner = current_user
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @planets = Planet.all
    @markers = @planets.geocoded.map do |planet|
      {
        lat: planet.latitude,
        lng: planet.longitude,
        image_url: helpers.asset_url("rocket-solid.svg")
      }
    end
  end

  def edit
  end

  def update
  end

  def ask
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :address, :capacity, :description, :price_per_millenia, :photo)
  end
end
