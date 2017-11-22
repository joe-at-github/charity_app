class AddImageToBusinessProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :business_profiles, :image, :string
  end
end
