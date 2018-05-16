class ReviewsController < ApplicationController
  # Review :resources
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(params_review)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render "new"
    end
  end

  private
  def set_restaurant
    @review = Review.find(params[:id])
  end

  def params_review
    params.require(:review).permit(:content, :rating)
  end
end
