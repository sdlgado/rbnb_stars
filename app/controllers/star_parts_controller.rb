class StarPartsController < ApplicationController
    before_action :set_star_part, only: [:show, :edit, :update, :destroy]

  def index
    # @star_parts = StarPart.all
    @star_parts = policy_scope(StarPart).order(created_at: :desc) # Pundit
    @best_parts = StarPart.where(rating: 5)
  end

  def show
    @star_part = StarPart.find(params[:id])
  end

  def new
    @star_part = current_user.star_parts.new
    authorize @star_part
  end

  def edit
    @star_part = StarPart.find(params[:id])
  end

  def create
    @star_part = current_user.star_parts.new(star_part_params)
    authorize @star_part
    if @star_part.save
      redirect_to @star_part
    end
  end

  def update
    @star_part = StarPart.find(params[:id])
    @star_part.update(star_part_params)
    redirect_to star_parts_path
  end

  def destroy
    @star_part = StarPart.find(params[:id])
    @star_part.destroy
    redirect_to star_parts_path
  end

  def set_star_part
    @star_part = StarPart.find(params[:id])
    authorize @star_part
  end
end
