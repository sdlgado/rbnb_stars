class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    # we need `booking_id` to associate review with corresponding booking
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to star_part_path(@booking.star_part)
    else
      render "bookings/show"
    end
    authorize @review
  end

  def destroy
    @review = Booking.find(params[:id])
    @review.destroy
    redirect_to star_part_booking_review_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :title, :rating)
  end
end
