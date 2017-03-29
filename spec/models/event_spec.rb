require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is valid with a title" do
      event = build(:event, title: "title")
      event.valid?
      expect(event.valid?).to be(true)
    end

    it "is invalid without a title" do
      event = build(:event, title: "")
      event.valid?
      expect(event.errors).to have_key(:title)
    end

    it "is invalid without a location" do
      event = build(:event, location: "")
      event.valid?
      expect(event.errors).to have_key(:location)
    end

    it "is valid with a location" do
      event = build(:event, location: "in a galaxy far, far away unless you happen to live there")
      event.valid?
      expect(event.valid?).to be(true)
    end
  end
end
