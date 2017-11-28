class AddColumnsToPackages < ActiveRecord::Migration[5.1]
  def change
    add_column :packages, :business_profile_id, :integer
    add_column :packages, :charity_profile_id, :integer
  end
end
