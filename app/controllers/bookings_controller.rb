class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def new
    @booking = Booking.new 
  end 
  
  def show
    @book = Book.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end 

  def destroy 
    @booking.destroy
    redirect_to bookings_path
  end 

  def edit
    @booking = Booking.find(params[:id])
    redirect_to bookings_path
  end 

  def index
    @bookings = Booking.where(user_id: current_user)
  end
