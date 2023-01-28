class Pet < ApplicationRecord
  belongs_to :owner
  belongs_to :animal_type
  has_many :records
  # Ataching a img
  has_one_attached :photo

  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only letters allowed" }

  # Adds default img unless it already exists
  after_commit :add_default_image, on: %i[create]

  private

  def add_default_image
    unless photo.attached?
      photo.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'default-pet-img.jpg')),
        filename: 'default-user-img.jpg',
        content_type: 'image/jpg'
      )
    end
  end
end
