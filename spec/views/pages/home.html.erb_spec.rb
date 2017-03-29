require 'rails_helper'

RSpec.describe "pages/home.html.erb", type: :view do
  describe "rendering home page" do
    it "contains \"Pages#home\"" do
      render
        response.should have_text("Taste of code")
        response.should have_text("Beginner coding workshop")
    end
  end
end
