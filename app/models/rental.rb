class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :cat

  validates :date_start, presence: true
  validates :date_end, presence: true
end
