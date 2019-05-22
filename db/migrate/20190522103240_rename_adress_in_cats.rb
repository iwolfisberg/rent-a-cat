class RenameAdressInCats < ActiveRecord::Migration[5.2]
  def change
    rename_column :cats, :address, :street
  end
end
