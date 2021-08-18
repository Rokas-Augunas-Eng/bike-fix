class BookingsController < ApplicationController
  before_action :find_service

  def index
    @bookings = Booking.all
  end
  
  def new
  @booking = Booking.new 
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.service = @service
    if @booking.save
      redirect_to profile_path
    else
      render :new  
    end 
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking.update(booking_params)
    redirect_to user_path(current_user)
  end

  private

  def find_service
    @service = Service.find(params[:service_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :booking_location, :comment, :datetime) # potential bug in the future 
  end
end
