require 'rails_helper'

describe "shared/_company_banner.html.erb" do
  it "Taste of Code" do
    render
    expect(response).to have_text("Taste of Code")
  end

  it "Begginer Coding workshop" do
    render
    expect(response).to have_text("Beginner Coding Workshop")
  end
end
