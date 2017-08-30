class Appointment < ApplicationRecord
  has_many :slots
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :slots, source: :mentee

  validates :start_time, :mentor_id, presence: true
end