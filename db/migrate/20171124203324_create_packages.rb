class CreatePackages < ActiveRecord::Migration[5.1]
  def change
    create_table :packages do |t|
      t.references :package_status, foreign_key: true
      t.date :available_from
      t.date :available_until

      t.timestamps
    end
  end
end
