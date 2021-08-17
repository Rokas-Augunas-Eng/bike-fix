class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @booking = Booking.new 
  end
end
