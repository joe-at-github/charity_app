class ChangeColumnNameInCharityProfiles < ActiveRecord::Migration[5.1]
  def change
    change_table :charity_profiles do |t|
      t.rename :account_id, :charity_id
    end
  end
end
