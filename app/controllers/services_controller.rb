class ServicesController < ApplicationController

  def index
    @services = Service.all # finish search params
  end

  def new
    @service = Service.new
  end

  # def show
  #   @services = Service.find(params[:id])
  # end

  # private 

  # def find_service
  #   @service = Service.find(params[:service_id])
  # end
end
