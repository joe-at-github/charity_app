class DropBusinesses < ActiveRecord::Migration[5.1]
  def up
    drop_table :businesses
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
