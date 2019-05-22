class Cat < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  validates :name, presence: true
  validates :street, presence: true
  validates :postcode, presence: true
  validates :city, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode #, if: :will_save_change_to_street?

  def address
    return "#{self.street}, #{self.postcode}, #{self.city}"
  end
end
