require 'rails_helper'

describe "shared/_sponsor_section.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Proudly supported by")
    rendered.should have_text("J.P. Morgan")
  end
end
