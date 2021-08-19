class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
    @mechanics = Users.where('mechanic = true')

     if params[:search_by_service].present?
      @mechanics = @mechanics.services.where("repair_name ILIKE ?", "%#{params[:search_by_service]}%")
    else
      @mechanics
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
