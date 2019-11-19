class StarPartsController < ApplicationController
    before_action :set_star_part, only: [:show, :edit, :update, :destroy]

  def index
    # @star_parts = StarPart.all
    @star_parts = policy_scope(StarPart).order(created_at: :desc) # Pundit
  end

  def show
    @star_part = StarPart.find(params[:id])
  end

  def new
    @star_part = current_user.star_parts.new
    authorize @star_part
  end

  def create
    @star_part = current_user.star_parts.new(star_part_params)
    authorize @star_part
    if @star_part.save
      redirect_to @star_part
    end
  end

  def set_star_part
    @star_part = StarPart.find(params[:id])
    authorize @star_part
  end
end
