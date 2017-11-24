class CreatePackageStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :package_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
