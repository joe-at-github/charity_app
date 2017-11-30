class AddPhoneNumberToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :phone_number, :string
  end
end
