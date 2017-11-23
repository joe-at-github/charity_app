class RenameCharityProfilesToProfiles < ActiveRecord::Migration[5.1]
  def change
    rename_table :charity_profiles, :profiles
  end
end
