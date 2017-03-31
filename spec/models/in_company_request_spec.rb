require 'rails_helper'

RSpec.describe InCompanyRequest, type: :model do
  describe "validations" do

    it "has a valid factory" do
      in_company_request = build(:in_company_request)
      expect(in_company_request.valid?).to be(true)
    end

    it "is invalid without a first name" do
      in_company_request = build(:in_company_request, first_name: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:first_name)
    end

    it "is invalid without a last name" do
      in_company_request = build(:in_company_request, last_name: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:last_name)
    end

    it "is invalid without a company name" do
      in_company_request = build(:in_company_request, company_name: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:company_name)
    end

    it "is invalid without a email" do
      in_company_request = build(:in_company_request, email: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:email)
    end

    it "is invalid without a date" do
      in_company_request = build(:in_company_request,  date: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:date)
    end

    it "is invalid without a number of spaces available" do
      in_company_request = build(:in_company_request, spaces_available: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:spaces_available)
    end


    it "is invalid without a in_company_request" do
      in_company_request = build(:in_company_request, workshop_id: "")
      in_company_request.valid?
      expect(in_company_request.errors).to have_key(:workshop_id)
    end
  end
end
