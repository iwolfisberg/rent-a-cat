class PagesController < ApplicationController
  def myprofile
    @user = current_user
    @cats = Cat.where(user_id: @user.id)
  end
end
