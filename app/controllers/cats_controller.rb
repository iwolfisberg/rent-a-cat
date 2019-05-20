class CatsController < ApplicationController
  before_action :set_cat, only: [:show]

  def index
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new
    @cat.user = current_user
    @cat.save
    redirect_to cat_path(@cat)
  end

  def show
    @user = current_user
    @cat.user_id = @user
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :description, :address, :photo)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
