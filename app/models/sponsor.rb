class Sponsor < ApplicationRecord

validates :company_name, presence: true, length: {maximum: 50}
end
