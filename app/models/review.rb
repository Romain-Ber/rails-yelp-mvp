class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true }
end
