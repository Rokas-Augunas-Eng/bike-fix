class UsersController < ApplicationController

  def index
    @mechanics = User.where('mechanic = true')

    if params[:search_by_service].present?

      @mechanics = @mechanics.joins(:services).where(services: {repair_name: params[:search_by_service]})
  end
  end
end


#  User.where(mechanic: true).joins(:services).where(services: {repair_name: 'Tyre Fitting (Per Wheel)'})
