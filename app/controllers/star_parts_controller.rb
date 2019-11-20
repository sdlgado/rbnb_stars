class StarPartsController < ApplicationController
  before_action :set_star_part, only: [:show, :edit, :update, :destroy]

  def index
    # @star_parts = StarPart.all
    @star_parts = policy_scope(StarPart).order(created_at: :desc) # Pundit
    @best_parts = StarPart.where(rating: 5)
  end

  def show
    @star_part = StarPart.find(params[:id])
    @star_part = StarPart.geocoded # returns flats with coordinates
    @markers = @star_parts.map do |part|
      {
        lat: part.latitude,
        lng: part.longitude
      }
    end
  end

  def new
    @star_part = StarPart.new
    authorize @star_part
  end

  def edit
    @star_part = StarPart.find(params[:id])
  end

  def create
    @star_part = StarPart.new(star_part_params.merge(user: current_user)) # pour le user_id
    authorize @star_part
    @star_part.save!
    redirect_to star_parts_path
  end

  def update
    @star_part = StarPart.find(params[:id])
    if @star_part.update(star_part_params)
      redirect_to star_parts_path
    else
      render :edit
    end
  end

  def destroy
    @star_part = StarPart.find(params[:id])
    @star_part.destroy
    redirect_to star_parts_path
  end

  private

  def set_star_part
    @star_part = StarPart.find(params[:id])
    authorize @star_part
  end

  def star_part_params
    params.require(:star_part).permit(:description, :rating, :name_of_part, :name_of_star, :price, :category, :user_id, :photo)
  end
end
