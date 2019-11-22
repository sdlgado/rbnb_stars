class StarPartsController < ApplicationController
  before_action :set_star_part, only: [:show, :edit, :update, :destroy]

  def index
    # @star_parts = StarPart.all
    if params[:query]
       if user_signed_in?
        @star_parts_all = policy_scope(StarPart).where.not(user_id: current_user.id).order(created_at: :desc)
      else
        @star_parts_all = policy_scope(StarPart).order(created_at: :desc)
      end
        @star_parts = @star_parts_all.search(params[:query])
    else
      @star_parts_all = policy_scope(StarPart).order(created_at: :desc) # Pundit
      if user_signed_in?
        @star_parts = policy_scope(StarPart).where.not(user_id: current_user.id).order(created_at: :desc) # Pundit
      else
        @star_parts = policy_scope(StarPart).order(created_at: :desc) # Pundit
      end
    end

    @best_parts = StarPart.where(rating: 5)
    @categories = StarPart.all.map { |star_part| star_part.category }.uniq
  end

  def show
    @star_part = StarPart.find(params[:id])
    # @star_part = StarPart.geocoded # returns flats with coordinates
    @star_parts = StarPart.geocoded
    @markers =
      [{
        lat: @star_part.latitude,
        lng: @star_part.longitude,
        # infoWindow: render_to_string(partial: "infowindow", locals: { star_part: @star_part }),
        image_url: helpers.asset_url('pink-cursor.jpg')
      }]
  end

  def new
    @star_part = StarPart.new
    authorize @star_part
  end

  def edit
    @star_part = StarPart.find(params[:id])
  end

  def create
    @star_part = StarPart.new(star_part_params.merge(user_id: current_user.id).merge(rating: 0)) # pour le user_id
    authorize @star_part
    if @star_part.save
      redirect_to parts_path
    else
      render :new
    end
  end

  def update
    @star_part = StarPart.find(params[:id])
    if @star_part.update(star_part_params)
      redirect_to parts_path
    else
      render :edit
    end
  end

  def destroy
    @star_part = StarPart.find(params[:id])
    @star_part.destroy
    redirect_to parts_path
    flash.now[:notice] = "NOTICE FLASH"
  end

  private

  def set_star_part
    @star_part = StarPart.find(params[:id])
    authorize @star_part
  end

  def star_part_params
    params.require(:star_part).permit(:description, :name_of_part, :name_of_star, :price, :category, :user_id, :photo, :address)
  end
end
