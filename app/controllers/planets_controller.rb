class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :localisation, :capacity, :description, :price_per_millenia)
  end
end
