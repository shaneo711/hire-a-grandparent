class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to review_path
    else
      render :new
    end
  end

  def index
    @reviews = Review.all
  end

  private

  def review_params
    params.require(:review).permit(:rating, :booking_id)
  end
end
