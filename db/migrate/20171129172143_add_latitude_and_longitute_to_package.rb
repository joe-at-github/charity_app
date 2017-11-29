class AddLatitudeAndLongituteToPackage < ActiveRecord::Migration[5.1]
  def change
    add_column :packages, :latitude, :float
    add_column :packages, :longitude, :float
  end
end
