class AddImageToCharityProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :charity_profiles, :image, :string
  end
end
