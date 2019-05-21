class Cat < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader
end
