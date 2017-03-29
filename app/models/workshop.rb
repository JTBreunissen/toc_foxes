class Workshop < ApplicationRecord
  validates :title, presence: true, length: { maximum: 75 }
  validates :description, presence: true
end
