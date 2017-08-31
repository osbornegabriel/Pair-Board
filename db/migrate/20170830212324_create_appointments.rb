class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :slot_id, null: false
      t.integer :mentee_id

      t.timestamps
    end
  end
end
