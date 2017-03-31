class WorkshopsController < ApplicationController

  def index
      @workshops = Workshop.all
  end
  def show
    @workshop = Workshop.find(params[:id])
  end
  def new
    @workshop = Workshop.new
  end
  def create
    @workshop = Workshop.new(workshp_params)
    if @workshop.save
       redirect_to @workshop
    else
       render 'new'
    end
  end
  def edit
    @workshop = Workshop.find(params[:id])
  end
  def update
    @workshop = Workshop.find(params[:id])
    if @workshop.update_attributes(workshop_params)
      redirect_to @workshop
    else
      render 'edit'
    end
  end
  def destroy
    @workshop = Workshop.find(params[:id])
    @workshop.destroy
    redirect_to workshops_path
  end

private
  def workshp_params
    workshop_params = params.require(:workshop).permit(:title, :description, :image, :link_to_live_demo, :link_to_github)
  end

end
