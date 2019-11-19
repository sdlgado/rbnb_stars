class UsersController < ApplicationController
  # skip_after_action :verify_authorized
  def account
    if current_user.nil?
      redirect_to root_path
    else
      @user = current_user
    end
    skip_authorization
  end
end
