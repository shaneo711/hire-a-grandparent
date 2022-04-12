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
    @grandparent.save
    redirect_to grandparents_path
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:name, :description, :availability, :location)
  end
end
