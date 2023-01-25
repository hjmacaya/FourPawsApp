class Owner < ApplicationRecord
  has_many :pets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #validates :phone_number, presence: true, uniqueness: true, allow_blank: false

  # Ataching a img
  has_one_attached :photo
end
