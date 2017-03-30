require 'rails_helper'

describe "shared/_sponsor_section_incompany.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Companies we work with")
    rendered.should have_text("ABN AMRO")
  end
end
