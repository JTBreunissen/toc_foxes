require 'rails_helper'

RSpec.describe "pages/attend.html.erb", type: :view do
  describe "rendering attend page" do
    it "contains \"Pages#attend\"" do
      render
      response.should have_text("Pages#attend")
    end

    it "contains 'what will you learn' partial" do
      render
      response.should have_text("What will you learn")
      response.should have_text("Professional developers technologies")
    end

    it "contains newsletter partial " do
      render
      response.should have_text("Join our newsletter")
    end
  end

end
