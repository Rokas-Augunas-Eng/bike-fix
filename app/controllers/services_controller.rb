class ServicesController < ApplicationController

  def index
    @services = Service.all # finish search params
  end

  def new
    @booking = Booking.new
  end
end
