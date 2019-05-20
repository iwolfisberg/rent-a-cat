class Cat < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :name, presence: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader
end
