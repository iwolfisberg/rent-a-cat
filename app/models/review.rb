class Review < ApplicationRecord
  belongs_to :cat
  validates :content, length: { minimum: 20 }
end
