class Admin::SponsorController < ApplicationController
  def index
    @sponsors = Sponsor.all
  end
end
