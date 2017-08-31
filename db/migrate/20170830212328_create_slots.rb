# class CreateSlots < ActiveRecord::Migration[5.1]
#   def change
#     create_table :slots do |t|
#       t.datetime :start_time, null: false
#       t.integer :mentor_id, null: false

#       t.timestamps
#     end
#   end
# end

class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.datetime :start_time, null: false
      t.integer :duration, :mentor_id, null: false

      t.timestamps
    end
  end
end
