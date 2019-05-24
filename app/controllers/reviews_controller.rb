class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @cat = Cat.find(params[:cat_id])
  end

  def create
    @review = Review.new(params_review)
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


    @rental = Rental.new(params_rental)
    @user = current_user
    @rental.user = @user
    @cat = Cat.find(params[:cat_id])
    @rental.cat = @cat
