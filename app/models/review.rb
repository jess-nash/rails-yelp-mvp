class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }, numericality: { only_integer: true }
  validates :content, presence: true
end
