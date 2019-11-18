class UsersController < ApplicationController
  def account
    if current_user.nil?
      redirect_to root_path
    else
      @user = current_user
    end
  end
end
