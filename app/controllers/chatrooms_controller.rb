class ChatroomsController < ApplicationController
  
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @booking = Booking.find(params[:id])
  end
end
