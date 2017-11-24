class CreatePackageItems < ActiveRecord::Migration[5.1]
  def change
    create_table :package_items do |t|
      t.references :product, foreign_key: true
      t.references :package, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
