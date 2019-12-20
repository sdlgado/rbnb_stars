class PagesController < ApplicationController
  # include Pundit
  skip_after_action :verify_authorized, only: [:home, :account] # pour Pundit
  skip_before_action :authenticate_user!, only: [:home, :account]

  def home
    if user_signed_in?
      @star_parts = StarPart.all.where.not(user_id: current_user.id)
      @best_parts = StarPart.where(rating: 5).where.not(user_id: current_user.id)
      @nice_faces = StarPart.where(category: "sand").where.not(user_id: current_user.id)
      @bottom_parts = StarPart.where(category: "tree").where.not(user_id: current_user.id)
    else
      @star_parts = StarPart.all
      @best_parts = StarPart.where(rating: 5)
      @nice_faces = StarPart.where(category: "sand")
      @bottom_parts = StarPart.where(category: "tree")
    end
  end
end
