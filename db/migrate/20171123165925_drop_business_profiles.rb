class DropBusinessProfiles < ActiveRecord::Migration[5.1]
  def up
    drop_table :business_profiles
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
