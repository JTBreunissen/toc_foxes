class InCompanyRequest < ApplicationRecord
  belongs_to :workshop

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company_name, presence: true
  validates :email, presence: true
  validates :date, presence: true
  validates :spaces_available, presence: true
  validates :comments
  validates :workshop_id, presence: true


end
