class BookingsController < ApplicationController
  def new
    skip_authorization
    @booking = Booking.new
    @star_part = StarPart.find(params[:star_part_id])
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.confirm
    @booking.save
    authorize @booking
    respond_to do |format|
      format.html { redirect_to pending_path }
      format.js
    end
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.decline
    @booking.save
    authorize @booking
    respond_to do |format|
      format.html { redirect_to pending_path }
      format.js
    end
  end

  def create
    skip_authorization
    if params[:star_part_id] && params[:booking][:start_date] != ""
      @star_part = StarPart.find(params[:star_part_id])

      start_date = Date.parse(params[:booking][:start_date].split(" to ")[0])
      end_date = params[:booking][:start_date].split(" to ")[1].nil? ? start_date : Date.parse(params[:booking][:start_date].split(" to ")[1])
      price = params[:booking][:price]
      message = params[:booking][:message]
      user_id = current_user.id
      star_part_id = params[:star_part_id]
      @booking = Booking.new(start_date: start_date, end_date: end_date, user_id: user_id, star_part_id: star_part_id, message: message, price: price, confirmed: "pending")
      if @booking.save
        redirect_to account_path
      else
        @booking = Booking.new
        render :new
      end
    else
      @star_part = StarPart.find(params[:star_part_id])
      @booking = Booking.new
      render :new
    end
    @review = Review.new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking_id = @booking.id
    @booking.destroy
    authorize @booking
    respond_to do |format|
      format.html { redirect_to account_path }
      format.js
    end
  end
end
