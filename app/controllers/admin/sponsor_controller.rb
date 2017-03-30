class Admin::SponsorController < ApplicationController
before_action :set_sponsors

  def index
  end

  private

  def set_sponsors
    @sponsors = Sponsor.all
  end
end
