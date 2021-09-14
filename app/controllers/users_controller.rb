class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  include CloudinaryHelper 

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
