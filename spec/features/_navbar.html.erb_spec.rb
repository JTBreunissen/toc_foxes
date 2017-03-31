require 'rails_helper'

RSpec.feature "navbar", type: :feature do

  describe "link TASTE OF CODE" do
    it "links to /in_company" do
      visit in_company_url
      click_on "TASTE OF CODE"
      expect visit root_url
    end
  end
  describe "link Join toc" do
    it "links to /in_company" do
      visit in_company_url
      click_on "JOIN TOC"
      expect visit attend_path
    end
  end

  describe "link INCOMPANY" do
    it "links to /attend" do
      visit attend_url
      click_on "INCOMPANY"
      expect visit in_company_path
    end
  end

  describe "link HOST TOC" do
    it "links to /in_company" do
      visit in_company_url
      click_on "HOST TOC"
      expect visit sponsor_path
    end
  end
end
