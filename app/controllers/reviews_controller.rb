class ReviewsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    @user = User.find(params[:user_id])

  end

  def create
    @booking = Booking.find(params[:booking_id])
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      flash[:notice] = 'Review was successfully created.'
      redirect_to @booking.service.user
    else
      flash[:notice] = "Error creating review: #{@review.errors}"
      redirect_to @booking.service.user
    end
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to(@review.post)
  end

  def show
    @reviews = Review.find(params[:id])
  end

  private

  def find_booking
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
