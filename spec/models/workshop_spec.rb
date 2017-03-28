require 'rails_helper'

RSpec.describe Workshop, type: :model do
  describe "validations" do
    it "is invalid without a title" do
      workshop = build(:workshop, title: "")
      workshop.valid?
      expect(workshop.errors).to have_key(:title)
    end

    it "is invalid with an event name of more than 75 characters" do
      workshop = build(:workshop, title: "Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ")
      workshop.valid?
      expect(workshop.errors).to have_key(:title)
    end

    it "is invalid without a description" do
      workshop = build(:workshop, description: "")
      workshop.valid?
      expect(workshop.errors).to have_key(:description)
    end

    it "has a valid factory" do
      workshop = build(:workshop)
      expect(workshop.valid?).to be(true)
    end
  end
end
