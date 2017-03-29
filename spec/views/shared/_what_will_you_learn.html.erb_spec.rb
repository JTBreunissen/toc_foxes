require 'rails_helper'

describe "shared/_what_will_you_learn.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Professional developers technologies")
    rendered.should have_text("JavaScript is a programming language")
  end
end
