class Attend < ApplicationRecord
  belongs_to :event
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                format: { with: %r\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
                          allow_nil: false }
end
