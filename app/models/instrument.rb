class Instrument < ApplicationRecord
  belongs_to :user, optional: true

  mount_uploader :image, ImageUploader
  serialize :image, JSON # Sqllite

  validates :title, :brand, :price, :model, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, length: { maximum: 7 }

  BRAND = %w{ Acoustic Bass Guitar Electric Guitar }
  FINISH = %w{ Black White Navy Blue}
  CONDITION = %w{ New Used Very Good Good Fair Poor }

end
