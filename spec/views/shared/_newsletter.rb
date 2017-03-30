require 'rails_helper'

describe "shared/_newsletter.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Join our newsletter")
    rendered.should have_text("Be the first one to know about our next events")
    rendered.should have_text("First Name")
    rendered.should have_text("Last Name")
    rendered.should have_text("Email")
    rendered.should have_submit_button("Subscribe")
  end
end
