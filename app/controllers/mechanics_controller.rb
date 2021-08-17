class MechanicsController < ApplicationController
  before_action :set_mechanic, only: [:show, :edit, :update, :destroy]

  def index
    @mechanics = Mechanic.all
  end

  def new
    @mechanic = Mechanic.new
  end

  def create
    @mechanic = Mechanic.new(mechanic_params)
    @mechanic.user = current_user
    if @mechanic.save
      redirect_to mechanic_path(@mechanic)
    else
      render :new
    end
  end

  def show
    @mechanic = Mechanic.find(params[:id])
    @booking = Booking.new
  end

  def edit
  end

  def update
    @mechanic.update(mechanic_params)
    redirect_to mechanic_path(@mechanic)
  end

  def destroy
    @mechanic.destroy
    redirect_to mechanics_path
  end

  private

  def set_mechanic
    @mechanic = Mechanic.find(params[:id])
  end

  def mechanic_params
    params.require(:mechanic).permit(:location, :name, :insta_availability, :photo)
  end
end
