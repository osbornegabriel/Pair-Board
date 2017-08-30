class User < ApplicationRecord
  has_many :appointments, foreign_key: :mentor_id
  has_many :mentored_slots, through: :appointments, source: :slots
  has_many :slots, foreign_key: :mentee_id

  validates :first_name, :last_name, presence: true
  validates :email, length: { maximum: 50 }, presence: true, uniqueness: true
  validates :password, length: { maximum: 50 }, presence: true
  validates :phone, numericality: { only_integer: true }, presence: true, uniqueness: true
end