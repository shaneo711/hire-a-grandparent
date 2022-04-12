class GrandparentsController < ApplicationController

  def index
    @grandparents = Grandparent.all
  end

  def new
    @grandparent = Grandparent.new
  end

  def create
    @grandparent = Grandparent.new(grandparent_params)
    @grandparent.user = current_user
    if @grandparent.save
      redirect_to grandparents_path
    else
      render :new
    end
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
    params.require(:grandparent).permit(:name, :description, :location)
  end
end
