class Cat < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  validates :name, presence: true
  validates :street, presence: true
  validates :postcode, presence: true
  validates :city, presence: true

  mount_uploader :photo, PhotoUploader
end
