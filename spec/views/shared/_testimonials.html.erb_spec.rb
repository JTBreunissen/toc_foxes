require 'rails_helper'

describe "shared/_testimonials.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Name attendee")
    rendered.should have_text("Personal review by attendee.")
  end
end
