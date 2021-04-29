class CreateWorkOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :work_orders do |t|
      t.integer :technician_id
      t.integer :location_id
      t.string :time
      t.string :duration
      t.string :price

      t.timestamps
    end
  end
end
