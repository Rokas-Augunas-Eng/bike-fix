class BookingsController < ApplicationController
 before_action :find_booking, only: [:destroy, :show, :edit, :confirmation]

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
    @booking.destroy
    redirect_to user_path(current_user)
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to user_path(current_user)
  end

  def confirmation
    @repair_name = @service.repair_name
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :booking_location, :comment, :datetime) # potential bug in the future 
  end
end
