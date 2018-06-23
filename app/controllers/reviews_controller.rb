class ReviewsController < ApplicationController
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.product_id = params[:product_id]

    if @review.save
      redirect_to product_path(@review.product)
      else
      render product_path(@review.product)
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
