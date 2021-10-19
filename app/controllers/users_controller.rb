class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :home, :show]

  include CloudinaryHelper 


  def home
  
  end

  def index
    @users = User.where(mechanic: true)
    if params[:search_by_service].present?
      @services = Service.where("repair_name ILIKE ?", "%#{params[:search_by_service]}%")
    else
      @services = Service.all
    end
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new

    @markers = [{
      lat: @user.to_coordinates.first,
      lng: @user.to_coordinates.last,
      info_window: render_to_string(partial: "map_box", locals: { user: @user }),
      image_url: cl_image_path("yr7vbtkxxfrlwjbceesz.jpg")
    }]

    sum = 0 
    counter = 0 
    mechanic_bookings = Booking.select {|booking| booking.service.user == @user}
    mechanic_bookings.each do |booking|
      if booking.reviews.present?
        sum += booking.reviews.first.rating
        counter += 1
      end
    end
    @average_rating = (sum.to_f / counter) if counter > 0
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name)
  end
end
