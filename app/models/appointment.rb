# class Appointment < ApplicationRecord
#   belongs_to :mentee, class_name: "User"
#   belongs_to :slot

#   validates :start_time, :slot_id, presence: true
# end

class Appointment < ApplicationRecord
  belongs_to :mentee, class_name: "User", optional: true
  belongs_to :slot
  has_one :mentor, through: :slot

  validates :mentee_id, :slot_id, presence: true


  def display_appointment
    if self.mentee
      "#{self.mentor.first_name} is meeting with #{self.mentee.first_name} on #{slot.date.strftime('%m/%d')} at #{slot.start_time.strftime('%H:%M')}"
    else

    end
  end
end