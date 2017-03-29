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

  it "contains \"Professional developers technologies\"" do
    render
    response.should have_text("Professional developers technologies")
  end

  it "contains \"JavaScript is a programming language\"" do
    render
    response.should have_text("JavaScript is a programming language")
  end
end
