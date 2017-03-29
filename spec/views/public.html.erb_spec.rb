require 'rails_helper'

describe "pages/public.html.erb" do
  it "contains \"Taste of Code\"" do
    render
    response.should have_text("Taste of Code")
  end

  it "contains \"Beginner coding workshop\"" do
    render
    response.should have_text("Beginner coding workshop")
  end

  it "contains Get Ready for the Day" do
    render
    response.should have_text("Get Ready for the Day")
  end

  it "Know your Tools" do
    render
    response.should have_text("Know your Tools")
  end
end
