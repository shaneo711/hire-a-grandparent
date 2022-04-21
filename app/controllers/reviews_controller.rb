class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params_id])
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

  # def update
  #    @review = review.find(params[:id])
  #  if @review.update_attributes(review_param)
  #       redirect_to :action => 'show', :id => @review
  #  else
  #    @booking = Booking.all
  #    render :action => 'edit'
  #   end
  # end

  def edit
    @review = Review.find(review_params)
    #do we want users to go back and edit reviews??
  end

  def destroy #do we want users to delete reviews?
    @review.destroy
    redirect_to review_path
  end

  def index
    @reviews = Review.all
  end

  # def show
  # #   @review = review.find(params[:id])
   #dont need show page unless paragraphs of informatiom is added
  # end
  
  private
  
  def review_params
    params.require(:review).permit(:rating, :booking_id)
  end
end
