class ChangeColumnNameInBusinessProfiles < ActiveRecord::Migration[5.1]
  def change
    change_table :business_profiles do |t|
      t.rename :account_id, :business_id
    end
  end
end
