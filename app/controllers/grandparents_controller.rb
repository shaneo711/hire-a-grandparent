class GrandparentsController < ApplicationController

  def index
    @grandparents = Grandparent.all
    @markers = @grandparents.geocoded.map do |grandparent|
      {
        lat: grandparent.latitude,
        lng: grandparent.longitude,
        # info_window: render_to_string(partial: "info_window", locals: { grandparent: grandparent })
        image_url: helpers.asset_url("grandparent_cartoon.png")
      }
    end
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
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:name, :description, :location, :interest, :image)
  end
end
