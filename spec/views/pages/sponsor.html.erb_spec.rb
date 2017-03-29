require 'rails_helper'

RSpec.describe "pages/sponsor.html.erb", type: :view do
  describe "rendering sponsor page" do
    it "contains \"Pages#sponsor\"" do
      render
      response.should have_text("Pages#sponsor")
    end
  end
end
