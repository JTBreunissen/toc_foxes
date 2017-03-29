require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is invalid without a title" do
      event = Event.new(title: "")
      event.valid?
      expect(event.errors).to have_key(:title)
    end

    it "is invalid with a description longer than 50 characters" do
      event = Event.new(description: "A" * 51)
      event.valid?
      expect(event.errors).to have_key(:titel)
    end


    it "is invalid without a description" do
      event = Event.new(location: "")
      event.valid?
      expect(event.errors).to have_key(:location)
    end
  end
end
