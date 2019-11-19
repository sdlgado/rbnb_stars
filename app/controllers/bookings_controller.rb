class BookingsController < ApplicationController
  def new
    skip_authorization
    @booking = Booking.new
    @star_part = StarPart.find(params[:star_part_id])
  end

  def create
    skip_authorization
    @star_part = StarPart.find(params[:star_part_id])
    start_date = Date.parse(params[:booking][:start_date])
    end_date = Date.parse(params[:booking][:end_date])
    user_id = current_user.id
    star_part_id = params[:star_part_id]
    @booking = Booking.new(start_date: start_date, end_date: end_date, user_id: user_id, star_part_id: star_part_id)
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end
end
