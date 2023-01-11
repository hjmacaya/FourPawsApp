class Pet < ApplicationRecord
  belongs_to :owner
  belongs_to :animal_type
  has_many :records

  validates :name, :birthdate, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
