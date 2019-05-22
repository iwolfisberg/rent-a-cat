class CatsController < ApplicationController
  before_action :set_cat, only: [:show]

  def index
    @cats = Cat.all.order(created_at: :desc)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user = current_user
    if @cat.save
      redirect_to cat_path(@cat)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @cat.user_id = @user
    @rental = Rental.new
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :description, :address, :postcode, :city, :photo)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
