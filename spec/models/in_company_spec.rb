require 'rails_helper'

RSpec.describe InCompany, type: :model do
  describe "validations" do
    it "is invalid without a company name" do
      incompany = InCompany.new(company_name: "")
      incompany.valid?
      expect(incompany.errors).to have_key(:company_name)
    end
  end
end
