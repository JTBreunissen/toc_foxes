require 'rails_helper'

RSpec.feature "links homepage", type: :feature do

    describe "link Join toc" do
      it "links to /attend" do
        visit root_url
        click_on "JOIN TOC"
        expect visit "/attend"
      end
    end

    describe "link INCOMPANY" do
      it "links to /in_company" do
        visit root_url
        click_on "INCOMPANY"
        expect visit "/in_company"
      end
    end

    describe "link HOST TOC" do
      it "links to /sponsor" do
        visit root_url
        click_on "HOST TOC"
        expect visit "/sponsor"
      end
    end
end
