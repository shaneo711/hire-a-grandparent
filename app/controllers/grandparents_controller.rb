class GrandparentsController < ApplicationController

  def index
  end

  def new
    @grandparent = Grandparent.new
  end

  def create
    @grandparent = Grandparent.new(params[:grandparent])
    @grandparent.save
    redirect_to grandparent_path(@grandparent)
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:name, description:, availability:, location:)
  end
end