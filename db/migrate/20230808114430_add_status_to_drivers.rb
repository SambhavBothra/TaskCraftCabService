class AddStatusToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :status, :string
  end
end
