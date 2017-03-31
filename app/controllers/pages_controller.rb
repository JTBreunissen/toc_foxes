class PagesController < ApplicationController
before_action :set_sponsors, :set_events

  def home
  end

  def attend
  end

  def in_company
  end

  def sponsor
  end

  private

  def set_sponsors
    @sponsors = Sponsor.all
  end

  def set_events
    @events = Event.all
  end
end
