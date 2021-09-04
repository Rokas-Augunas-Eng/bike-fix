class BookingsController < ApplicationController
 before_action :find_booking, only: [:destroy, :show, :edit, :confirmation]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @mechanic = User.find(params[:user_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to orders_path
    else
      render :new
    end
  end

  def destroy
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
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to user_path(current_user)
  end

  def confirmation
    @repair_name = @booking.service.repair_name
    @time = Time.now+30*60
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:service_id)
  end
end
