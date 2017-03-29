require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is valid with a title" do
      event = Event.new(title: "great event")
      event.valid?
      expect(event.errors).to have_key(:title)
    end
    it "is valid without a title" do
      event = Event.new(title: nil)
      event.valid?
      expect(event.errors).to have_key(:title)
    end

    it "is invalid without a location" do
      event = Event.new(location: nil)
      event.valid?
      expect(event.errors).to have_key(:location)
    end
    it "is valid with a location" do
      event = Event.new(location: "in a galaxy far, far away unless you happen to live there")
      event.valid?
      expect(event.errors).to have_key(:location)
    end
  end
end
