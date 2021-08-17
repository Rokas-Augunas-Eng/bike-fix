class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end
  
  def new
  @booking = Booking.new 
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    find_mechanic
    @booking.mechanic = @mechanic
    if @booking.save
      redirect_to profile_path
    else
      render :new  
    end 
  end

  def destroy
    @booking = Booking.find(params[:id])
    @mechanic = @booking.mechanic
    @booking.destroy
    redirect_to mechanic_path(@mechanic)
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking.update(booking_params)
    redirect_to mechanic_path(@mechanic)
  end

  private

  def find_mechanic
    @mechanic = mechanic.find(params[:mechanic_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :service_id, :booking_location, :comment, :datetime)
  end
end
