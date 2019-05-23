class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cat, only: [:show]

  def index
    @cats = Cat.where.not(latitude: nil, longitude: nil).order(created_at: :desc)
    @markers = @cats.map do |cat|
      {
        lat: cat.latitude,
        lng: cat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end
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
    @rental = Rental.new
    raise
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :description, :street, :postcode, :city, :photo)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
