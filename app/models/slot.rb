class Slot < ApplicationRecord
  attr_writer :duration
  after_save :create_slots

  has_many :appointments
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :appointments, source: :mentee

  validates :start_time, :mentor_id, :date, presence: true

  def duration_convert
    { "30 minutes" => 180,
      "60 minutes" => 360,
      "1 hour 30 minutes" => 540,
      "2 hours" => 720
    }
  end

  def duration_string=(duration_string)
    @duration = self.duration_convert[duration_string]
  end

  def end_time
    self.start_time + self.duration
  end

end