class GrandparentsController < ApplicationController

  def index
  end

  def new
    @grandparent = Grandparent.new
  end

  def create
    @grandparent = Grandparent.new(params[:grandparent])
    @grandparent.user = current_user
    @grandparent.save
    redirect_to grandparent_path(@grandparent)
  end

  def show
    @grandparent = Grandparent.find(params[:id])
    @description = params[:description]
    @interests = params[:interests]
    @availability = params[:availability]
    @location = params[:location]
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:name, :description, :availability, :location, :user_id)
  end
end
