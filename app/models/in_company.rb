class InCompany < ApplicationRecord
  belongs_to :event

  validates :company_name, presence: true
end
