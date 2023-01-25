class Vet < ApplicationRecord
  belongs_to :veterinary
  has_many :records
  has_many :pets, through: :records
  # Ataching a img
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Adds default img unless it already exists
  after_commit :add_default_image, on: %i[create]

  private

  def add_default_image
    unless photo.attached?
      photo.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'default-user-img.png')),
        filename: 'default-user-img.png',
        content_type: 'image/png'
      )
    end
  end
end
