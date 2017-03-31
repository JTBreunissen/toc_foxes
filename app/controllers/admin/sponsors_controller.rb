class Admin::SponsorsController < ApplicationController
before_action :set_sponsors
before_action :set_sponsor, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)

    if @sponsor.save
      redirect_to admin_sponsors_url, :notice => "Sponsor successfully created"
    else
      redirect_to admin_sponsors_url, :alert => "Please fill in all required fields"
    end
  end

  def update
    if @sponsor.update_attributes(sponsor_params)
      redirect_to admin_sponsors_url, :notice => "Sponsor successfully updated"
    else
      redirect_to admin_sponsors_url, :alert => "Please fill in all required fields"
    end
  end

  def destroy
      @sponsor.destroy
      redirect_to admin_sponsors_url, :notice => "Sponsor has been deleted"
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
