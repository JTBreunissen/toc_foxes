require 'rails_helper'
RSpec.describe Sponsor, type: :model do
  describe "validations" do
    it "is invalid without a company name" do
      sponsor = Sponsor.new(company_name: "")
      sponsor.valid?
      expect(sponsor.errors).to have_key(:company_name)
    end
    it "is valid with a company name" do
      sponsor = Sponsor.new(company_name: "Codaisseur")
      expect(sponsor.valid?).to eq(true)
    end
  end
end
