class Attend < ApplicationRecord
  belongs_to :event
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}
  validates :email, presence: true,
                format: { with: %r\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
                          allow_nil: false }
end
