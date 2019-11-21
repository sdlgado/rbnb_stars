class UsersController < ApplicationController
  # skip_after_action :verify_authorized
  def account
    define_variables
  end

  def pending
    define_variables
  end

  def parts
    define_variables
  end

  private

  def define_variables
    if current_user.nil?
      redirect_to root_path
    else
      @user = current_user
      @user_pending_bookings = []
      current_user.star_parts.each do |star_part|
        star_part.bookings.each do |booking|
          @user_pending_bookings << booking if booking.confirmed == "pending"
        end
      end
    end
    skip_authorization
  end
end
