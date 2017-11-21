class CreateCharityProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :charity_profiles do |t|
      t.integer :account_id
      t.text :description
      t.string :street
      t.string :postcode
      t.string :contact_first_name
      t.string :contact_last_name

      t.timestamps
    end
  end
end
