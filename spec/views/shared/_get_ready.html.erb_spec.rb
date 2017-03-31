require 'rails_helper'

describe "shared/_get_ready.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Get Ready for the Day")
    rendered.should have_text("Requirements")

  end
end
