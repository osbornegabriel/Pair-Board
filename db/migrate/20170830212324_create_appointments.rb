class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :start_time, null: false
      t.integer :mentor_id, null: false

      t.timestamps
    end
  end
end
