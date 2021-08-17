class UsersController < ApplicationController

  def index
        @mechanics = Users.where('mechanic = true')

        if params[:search_by_service].present?
      @mechanics = @mechanics.services.where("repair_name ILIKE ?", "%#{params[:search_by_service]}%")
    else
      @mechanics
    end
  end
  end
end
