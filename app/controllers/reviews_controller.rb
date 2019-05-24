class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @cat = Cat.find(params[:cat_id])
  end

  def create
    @review = Review.new(review_params)
    @cat = Cat.find(params[:cat_id])
    @review.cat = @cat

    if @review.save
      redirect_to cat_path(@cat)
    else
      render 'cats/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
