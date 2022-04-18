class GrandparentsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :find_grandparent, only: %i[show edit update destroy]

  def index
    @grandparents = policy_scope(Grandparent).order(created_at: :desc)
  end

  def new
    @grandparent = Grandparent.new
    authorize @grandparent
  end

  def create
    @grandparent = Grandparent.new(grandparent_params)
    @grandparent.user = current_user
    authorize @grandparent
    if @grandparent.save!
      redirect_to grandparent_path(@grandparent)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @grandparent.update(grandparent_params)
    redirect_to grandparent_path(@grandparent)
  end

  def destroy
    @grandparent.destroy
    redirect_to grandparents_path
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:name, :description, :location, :interest, :image)
  end

  def find_grandparent
    @grandparent = Grandparent.find(params[:id])
    authorize @grandparent
  end
end
