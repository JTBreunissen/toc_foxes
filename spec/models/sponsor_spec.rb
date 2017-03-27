require 'rails_helper'

RSpec.describe Sponsor, type: :model do



      describe "validations" do
        it "is invalid without a company name" do
          sponsor = Sponsor.new(company_name: "")
          sponsor.valid?
          expect(sponsor.errors).to have_key(:company_name)
        end

        it "is invalid with a Company name longer than 50 characters" do
          sponsor = Sponsor.new(company_name: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ")
          sponsor.valid?
          expect(sponsor.errors).to have_key(:company_name)
        end
      end
end
