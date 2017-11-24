class RemoveExpiryDateFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :expiration_date
  end
end
