class Slot < ApplicationRecord
  has_one :appointment
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :appointments, source: :mentee

  validates :start_time, :mentor_id, presence: true
end