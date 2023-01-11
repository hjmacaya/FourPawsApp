class AnimalType < ApplicationRecord
  has_many :pets
  validates :animal_type, presence: true, uniqueness: true, allow_blank: false
end
