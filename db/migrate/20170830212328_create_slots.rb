class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.time :start_time, null: false
      t.date :date, null: false
      t.integer :mentor_id, null: false

      t.timestamps
    end
  end
end
