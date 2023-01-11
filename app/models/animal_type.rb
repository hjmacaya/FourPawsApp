class AnimalType < ApplicationRecord
  has_many :pets
  validates :type, presence: true, uniqueness: true, allow_blank: false
end
