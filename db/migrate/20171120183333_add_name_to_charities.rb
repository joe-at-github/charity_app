class AddNameToCharities < ActiveRecord::Migration[5.1]
  def change
    add_column :charities, :name, :string
  end
end
