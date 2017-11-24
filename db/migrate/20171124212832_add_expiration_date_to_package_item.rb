class AddExpirationDateToPackageItem < ActiveRecord::Migration[5.1]
  def change
    add_column :package_items, :expiration_date, :date
  end
end
