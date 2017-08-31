# class Appointment < ApplicationRecord
#   belongs_to :mentee, class_name: "User"
#   belongs_to :slot
  
#   validates :start_time, :slot_id, presence: true
# end

class Appointment < ApplicationRecord
  belongs_to :mentee, class_name: "User"
  belongs_to :slot
  
  validates :mentee_id, :slot_id, presence: true
end