require 'rails_helper'

describe "pages/shared/_what_will_you_learn.html.erb" do
  it "contains \"Professional developers technologies\"" do
    render
    rendered.should have_text("Professional developers technologies")
  end

  it "contains \"JavaScript is a programming language\"" do
    render
    rendered.should have_text("JavaScript is a programming language")
  end
end
