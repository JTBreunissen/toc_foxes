class PagesController < ApplicationController
  def home
  end

  def attend
    @sponsors = Sponsor.all
  end

  def in_company
  end

  def sponsor
  end
end
