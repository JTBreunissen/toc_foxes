require 'rails_helper'

describe "shared/_sponsored_by.html.erb" do
  it "contains content" do
    render
    expect(rendered).to have_text("Proudly supported by")
    expect(rendered).to have_text("J.P. Morgan")
  end
end
