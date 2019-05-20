class CatsController < ApplicationController
  before_action :set_cat, only: [:show]

  def index
  end

  def new
    @cat = Cat.new
  end

  def show
    @user = current_user
    @cat.user_id = @user
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

end
