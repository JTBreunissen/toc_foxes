require 'rails_helper'

RSpec.describe Attend, type: :model do

  describe "validations" do
    it "is invalid without a first name" do
      attend = Attend.new(first_name: "")
      attend.valid?
      expect(attend.errors).to have_key(:first_name)
    end
    it "is invalid without a last name" do
      attend = Attend.new(last_name: "")
      attend.valid?
      expect(attend.errors).to have_key(:last_name)
    end
    it "is invalid without an email" do
      attend = Attend.new(email: "")
      attend.valid?
      expect(attend.errors).to have_key(:email)
    end
    it "is invalid with wrong email format" do
      attend = Attend.new(email: "msibai.com")
      attend.valid?
      expect(attend.errors).to have_key(:email)
    end
    it "is valid with right email format" do
      attend = Attend.new(email: "msibai@gmail.com")
      attend.valid?
      expect(attend.valid).to be_valid
    end

  end
end
