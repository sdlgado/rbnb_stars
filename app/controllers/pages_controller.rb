class PagesController < ApplicationController
  # include Pundit
  skip_after_action :verify_authorized, only: [:home, :account] # pour Pundit
  skip_before_action :authenticate_user!, only: [:home, :account]

  def home
  end
end
