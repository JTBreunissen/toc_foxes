class Event < ApplicationRecord
  has_one :workshop
  belongs_to :sponsor
  has_many :attends

  validates :title, presence: true, length: {maximum: 50}
  validates :locatio, presence: true}
end
