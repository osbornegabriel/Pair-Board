# class Slot < ApplicationRecord
#   has_many :appointments
#   belongs_to :mentor, class_name: "User"
#   has_many :mentees, through: :appointments, source: :mentee

#   validates :start_time, :mentor_id, presence: true
# end

class Slot < ApplicationRecord
  attr_reader :duration_as_integer
  has_one :appointment
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :appointments, source: :mentee

  validates :start_time, :mentor_id, :duration, :date, presence: true

  def duration_convert
    { "30 minutes" => 180,
      "60 minutes" => 360,
      "1 hour 30 minutes" => 540,
      "2 hours" => 720
    }
  end

  def duration_as_integer
    duration_convert[self.duration]
  end

  # def duration_string=(duration_string)
  #   @duration = 5
  #   # duration_convert[duration_string.chomp]
  # end


  def end_time
    self.start_time + duration_as_integer
  end
end