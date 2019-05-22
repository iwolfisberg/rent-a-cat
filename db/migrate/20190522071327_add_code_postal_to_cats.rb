class AddCodePostalToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :code_postal, :integer
  end
end
