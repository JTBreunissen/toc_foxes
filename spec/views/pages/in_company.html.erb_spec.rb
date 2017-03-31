require 'rails_helper'

RSpec.describe "pages/in_company.html.erb", type: :view do
  describe "rendering in_company page" do
    it "contains \"Pages#in_company\"" do
      render
      expect(response).to have_text("Pages#in_company")
    end

    it "contains choose_course partial " do
      render
      response.should have_text("Choose your course")
      response.should have_text("Get to know our different types of workshops")
    end
      
    it "contains get_ready partial " do
      render
      response.should have_text("Get Ready for the Day")
    end
  end
end
