class PagesController < ApplicationController
  def myprofile
    @user = current_user
    @cats = Cat.where(user_id: @user.id).order(created_at: :desc)
    @rentals = Rental.where(user_id: @user.id).order(created_at: :desc)
    @cats_rented = []
    @rentals.each do |rental|
      cat = Cat.find(rental.cat_id)
      @cats_rented.push(cat)
    end
  end
end
