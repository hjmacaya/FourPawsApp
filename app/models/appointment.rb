class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :vet

  validates :start_time, :end_time, presence: true
end
