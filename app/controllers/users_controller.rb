class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.where(mechanic: true)

    # the `geocoded` scope filters only users with coordinates (latitude & longitude)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "map_box", locals: { user: user })
      }
    end

     if params[:search_by_service].present?
      @users = @users.services.where("repair_name ILIKE ?", "%#{params[:search_by_service]}%")
    else
      @users
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name)
  end
end
