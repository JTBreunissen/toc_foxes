require 'rails_helper'

RSpec.describe "pages/in_company.html.erb", type: :view do
  describe "rendering in_company page" do
    it "contains \"Pages#in_company\"" do
      render
      expect(response).to have_text("Pages#in_company")
    end
  end
end
