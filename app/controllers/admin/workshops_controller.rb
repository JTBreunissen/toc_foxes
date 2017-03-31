class Admin::WorkshopsController < ApplicationController
  before_action :set_workshops
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @workshop = Workshop.new
  end
  def create
    @workshop = Workshop.new(workshop_params)
    if @workshop.save
       redirect_to admin_workshops_url, :notice => "Workshop successfully created"
    else
       redirect_to admin_workshops_url, :alert => "Please fill in all required fields"
    end
  end

  def update
    if @workshop.update_attributes(workshop_params)
      redirect_to admin_workshop_url, :notice => "Workshop successfully updated"
    else
      redirect_to admin_workshops_url, :alert => "Please fill in all required fields"
    end
  end

  def destroy
    @workshop.destroy
    redirect_to admin_workshops_url, :notice => "Workshop has been deleted"
  end

  private

  def set_workshops
  @workshops = Workshop.all
  end
  def set_workshop
  @workshop = Workshop.find(params[:id])
  end
  def workshop_params
   params.require(:workshop).permit(:title, :description, :image, :link_to_live_demo, :link_to_github)
  end
end
