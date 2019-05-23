class RentalsController < ApplicationController
  def create
    @rental = Rental.new(params_rental)
    @user = current_user
    @rental.user = @user
    @cat = Cat.find(params[:cat_id])
    @rental.cat = @cat


    if @rental.save
      redirect_to myprofile_path
    else
      render cat_path(@cat)
    end
  end

  private

  def params_rental
    params.require(:rental).permit(:date_start, :date_end)
  end
end
