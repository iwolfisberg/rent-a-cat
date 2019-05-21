class PagesController < ApplicationController
  def myprofile
    @user = current_user
    @cats = Cat.where(user_id: @user).order(created_at: :desc)
    @rentals = Rental.where(user_id: @user).order(created_at: :desc)
  end
end
