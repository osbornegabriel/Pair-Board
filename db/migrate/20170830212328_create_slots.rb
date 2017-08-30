class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.datetime :start_time, null: false
      t.integer :appointment_id, null: false
      t.integer :mentee_id

      t.timestamps
    end
  end
end
