require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "validations" do
    it "is invalid without a reviewer" do
      review = build(:review, reviewer: "")
      review.valid?
      expect(review.errors).to have_key(:reviewer)
    end

    it "is invalid without a review/ description" do
      review = build(:review, review: "")
      review.valid?
      expect(review.errors).to have_key(:review)
    end

    it "has a valid factory" do
      review = build(:review)
      expect(review.valid?).to be(true)
    end
  end
end
