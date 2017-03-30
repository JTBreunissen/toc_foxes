require 'rails_helper'

describe "shared/_upcoming_events.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Upcoming Events")
    rendered.should have_text("See what's next!")
  end
end
