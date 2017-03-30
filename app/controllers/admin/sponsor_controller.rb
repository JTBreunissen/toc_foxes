class Admin::SponsorController < ApplicationController
before_action :set_sponsors
before_action :set_sponsor, only: [:show, :edit, :update]

  def index
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)

    if @sponsor.save
      redirect_to admin_sponsor_index, :notice => "Sponsor successfully created"
    else
      redirect_to admin_sponsor_index, :alert => "Please fill in all required fields"
    end
  end

  def show
  end

  private

  def set_sponsors
    @sponsors = Sponsor.all
  end

  def set_sponsor
    @sponsor = Sponsor.find(params[:id])
  end

  def sponsor_params
    params.require(:sponsor).permit(:company_name, :logo)
  end
end
