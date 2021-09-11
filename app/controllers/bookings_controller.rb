class BookingsController < ApplicationController
  include CloudinaryHelper

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
    @booking = Booking.find(params[:id])
    @user = @booking.service.user
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
    
    @mechanic = @booking.service.user
        @marker = [{
      lat: @mechanic.latitude,
      lng: @mechanic.longitude,
      info_window: render_to_string(partial: "map_box", locals: { user: @mechanic }),
      image_url: cl_image_path("yr7vbtkxxfrlwjbceesz.jpg")
    },
   {
      lat: @booking.latitude,
      lng: @booking.longitude,
      info_window: render_to_string(partial: "map_box", locals: { user: @user }),
      image_url: cl_image_path("yr7vbtkxxfrlwjbceesz.jpg")
    }]

    @booking_location = @booking.booking_location
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:service_id)
  end
end
