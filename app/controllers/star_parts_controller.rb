class StarPartsController < ApplicationController
  def index
    @star_parts = StarPart.all
  end

  def show
    @star_part = StarPart.find(params[:id])
  end
end
