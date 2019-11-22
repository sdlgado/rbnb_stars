class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    par = {user_id: current_user.id, content: params[:review][:content], rating: params[:review][:rating]}
    @review = Review.new(par)
    # we need `booking_id` to associate review with corresponding booking
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      array_reviews = []
      @booking.star_part.reviews.each do |review|
        array_reviews << review.rating
      end
      redirect_to star_part_path(@booking.star_part)
      @booking.star_part.rating = array_reviews.length == 0 ? 0 : (array_reviews.sum / array_reviews.length).ceil
      @booking.star_part.save
    else
      render :new
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
    params.require(:review).permit(:content, :rating)
  end
end
