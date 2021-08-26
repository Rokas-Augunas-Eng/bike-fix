class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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

    @marker = {
      lat: @user.latitude,
      lng: @user.longitude,
      info_window: render_to_string(partial: "map_box", locals: { user: @user }),
      image_url: helpers.asset_url('mechanic_logo.jpg')
    }
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
