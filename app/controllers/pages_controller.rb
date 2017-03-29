class PagesController < ApplicationController
  def home
    render :home
  end

  def attend
    render :attend
  end

  def in_company
    render :in_company
  end

  def sponsor
    render :sponsor
  end
end
