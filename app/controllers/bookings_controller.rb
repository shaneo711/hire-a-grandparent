class BookingsController < ApplicationController
  before_action :find_booking, only: %i[show edit update destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @grandparent = Grandparent.find(params[:grandparent_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @grandparent = Grandparent.find(params[:grandparent_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.grandparent = @grandparent
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :title, :description, :comment)
  end

  def find_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
