require 'rails_helper'

RSpec.describe Workshop, type: :model do
  describe "validations" do
    it "is invalid without a title" do
      workshop = Workshop.new(title: "")
      workshop.valid?
      expect(workshop.errors).to have_key(:title)
    end

    it "is invalid with an event name of more than 75 characters" do
      workshop = Workshop.new(title: "Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ")
      workshop.valid?
      expect(workshop.errors).to have_key(:title)
    end

    it "is invalid without a description" do
      workshop = Workshop.new(description: "")
      workshop.valid?
      expect(workshop.errors).to have_key(:description)
    end
  end
end
