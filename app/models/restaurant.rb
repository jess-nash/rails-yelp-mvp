class Restaurant < ApplicationRecord
  has_many :reviews
  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  # A review must belong to a restaurant.
  # A review must have a content.
  # A review must have a rating.
  # A review’s rating must be a number between 0 and 5.
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
