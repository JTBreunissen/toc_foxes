require 'rails_helper'

describe "shared/_company_banner.html.erb" do
  it "Taste of Code" do
    render
    response.should have_text("Taste of Code")
  end

  it "Begginer Coding workshop" do
    render
    response.should have_text("Begginer Coding Workshop")
  end
end
