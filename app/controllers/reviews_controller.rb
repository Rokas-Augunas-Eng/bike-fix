class ReviewsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end
  
  def new
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = @review.reviews.build(params[:review])

    if @review.save
      flash[:notice] = 'Review was successfully created.'
      redirect_to @booking
    else
      flash[:notice] = "Error creating review: #{@review.errors}"
      redirect_to @booking
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
    params.require(:review).permit(:rating)
  end
end