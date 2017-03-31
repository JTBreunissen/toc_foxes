require 'rails_helper'

describe "shared/_choose_course.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Choose your course")
    rendered.should have_text("Get to know our different types of workshops")
  end
end
