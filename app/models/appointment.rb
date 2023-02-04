class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :vet

  validates :date, :hour, presence: true
end
