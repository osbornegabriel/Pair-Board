# class Slot < ApplicationRecord
#   has_many :appointments
#   belongs_to :mentor, class_name: "User"
#   has_many :mentees, through: :appointments, source: :mentee

#   validates :start_time, :mentor_id, presence: true
# end

class Slot < ApplicationRecord
  has_many :appointments
  belongs_to :mentor, class_name: "User"
  has_many :mentees, through: :appointments, source: :mentee

  validates :start_time, :mentor_id, :duration, presence: true
end