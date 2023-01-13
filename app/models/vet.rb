class Vet < ApplicationRecord
  belongs_to :veterinary
  has_many :records
  has_many :pets, through: :records
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
