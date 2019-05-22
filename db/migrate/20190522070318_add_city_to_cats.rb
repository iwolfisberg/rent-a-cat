class AddCityToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :city, :string
  end
end
