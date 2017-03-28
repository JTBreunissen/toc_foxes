class Event < ApplicationRecord
  belongs_to :workshop
  belongs_to :sponsor
  has_many :attendees

  validates :title, presence: true}
  validates :location, presence: true}
end
