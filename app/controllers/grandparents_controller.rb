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

  private

  def grandparent_params
    params.require(:grandparent).permit(:name, :description, :location)
  end
end
