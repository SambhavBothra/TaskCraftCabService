class CreateCabs < ActiveRecord::Migration[7.0]
  def change
    create_table :cabs do |t|
      t.string :cab_no

      t.timestamps
    end
  end
end
