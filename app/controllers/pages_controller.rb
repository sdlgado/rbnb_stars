class PagesController < ApplicationController
  # include Pundit
  skip_after_action :verify_authorized, only: [:home, :account] # pour Pundit
  skip_before_action :authenticate_user!, only: [:home, :account]

  def home
    @star_parts = StarPart.all
    @best_parts = StarPart.where(rating: 5)
    @nice_faces = StarPart.where(category: "head")
    @bottom_parts = StarPart.where(category: "bottom")
  end
end
