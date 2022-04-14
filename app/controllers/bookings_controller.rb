class BookingsController < ApplicationController

  def create
    @booking = Booking.new(params[:booking])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def new
    @booking = booking.find(params[:id])
    @booking = booking.new 
  end 
  
  def show
    @grandparent = Grandparent.find(params[:id])
    @description = params[:description]
    @interests = params[:interests]
    @availability = params[:availability]
    @location = params[:location]
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to bookings_path
  end 

  def destroy 
    @booking.destroy
    redirect_to bookings_path
  end 

  def edit
    @booking = Booking.find(params[:id])
  end 
end
