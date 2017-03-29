require 'rails_helper'

describe "pages/attend.html.erb" do
  it "contains \"Professional developers technologies\"" do
    render
    rendered.should have_text("Professional developers technologies")
  end

  it "contains \"JavaScript is a programming language\"" do
    render
    rendered.should have_text("JavaScript is a programming language")
  end
end
