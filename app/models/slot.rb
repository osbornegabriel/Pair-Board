class Slot < ApplicationRecord
  # attr_reader :number_of_slots
  after_save :create_slots

  has_many :appointments
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :appointments, source: :mentee

  validates :start_time, :mentor_id, :date, presence: true

  def create_slots
    self.number_of_slots.times do |i|
      Appointment.create(slot: self, start_time: (self.start_time + (i* 180)))
    end
  end

  def duration=(duration)
    duration_convert = {
      "30 minutes" => 1,
      "60 minutes" => 2,
      "1 hour 30 minutes" => 3,
      "2 hours" => 4
    }
    @number_of_slots = duration_convert[duration]
  end

end