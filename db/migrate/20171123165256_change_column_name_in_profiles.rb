class ChangeColumnNameInProfiles < ActiveRecord::Migration[5.1]
  def change
    change_table :profiles do |t|
     t.rename :charity_id, :user_id
    end
  end
end
