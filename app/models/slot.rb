class Slot < ApplicationRecord
  attr_reader :duration_as_integer
  has_one :appointment
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :appointments, source: :mentee

  validates :start_time, :mentor_id, :duration, :date, presence: true

  def duration_convert
    { "30 minutes" => 1800,
      "60 minutes" => 3600,
      "1 hour 30 minutes" => 5400,
      "2 hours" => 7200
    }
  end

  def duration_as_integer
    duration_convert[self.duration]
  end

  def end_time
    self.start_time + (self.duration_as_integer * 60)
  end

end