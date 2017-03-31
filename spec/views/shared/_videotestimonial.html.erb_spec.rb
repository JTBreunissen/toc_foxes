require 'rails_helper'

describe "shared/_videotestimonial.html.erb" do
  it "contains content" do
    render
    rendered.should have_selector 'iframe'
  end
end
