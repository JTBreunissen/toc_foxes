require 'rails_helper'

RSpec.describe "pages/attend.html.erb", type: :view do
  describe "rendering attend page" do
    it "contains \"Pages#attend\"" do
      render
      response.should have_text("Pages#attend")
    end
  end
  
  it "contains \"Taste of Code\"" do
    render
    response.should have_text("Taste of Code")
  end

  it "contains \"Beginner coding workshop\"" do
    render
    response.should have_text("Beginner coding workshop")
  end
end
