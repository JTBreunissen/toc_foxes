class Review < ApplicationRecord
  validates :reviewer, presence: true
  validates :review, presence: true
end
