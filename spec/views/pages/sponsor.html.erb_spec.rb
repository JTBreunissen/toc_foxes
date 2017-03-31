require 'rails_helper'

RSpec.describe "pages/sponsor.html.erb", type: :view do
  describe "rendering sponsor page" do
    it "contains Host next TOC partial " do
       render
       expect(response).to have_text("Host next TOC")
    end
  end
end
