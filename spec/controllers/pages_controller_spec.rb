require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "renders the home page" do
      get :home
      expect(response).to render_template("home")
    end
  end

  describe "GET #attend" do
    it "returns http success" do
      get :attend
      expect(response).to have_http_status(:success)
    end

    it "renders the attend page" do
      get :attend
      expect(response).to render_template("attend")
    end
  end

  describe "GET #in_company" do
    it "returns http success" do
      get :in_company
      expect(response).to have_http_status(:success)
    end

    it "renders the in_company page" do
      get :in_company
      expect(response).to render_template("in_company")
    end
  end

  describe "GET #sponsor" do
    it "returns http success" do
      get :sponsor
      expect(response).to have_http_status(:success)
    end

    it "renders the sponsor page" do
      get :sponsor
      expect(response).to render_template("sponsor")
    end
  end

end
