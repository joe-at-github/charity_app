class RenameCharitiesToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :charities, :users
  end
end
