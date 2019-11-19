class PagesController < ApplicationController
  def home
    @star_parts = StarPart.all
  end
end
