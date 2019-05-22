class AddCodePostalToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :postcode, :string
  end
end
