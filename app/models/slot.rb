class Slot < ApplicationRecord
  belongs_to :mentee, class_name "User"
  belongs_to :appointment

  validates :start_time, :appointment_id, presence: true
end