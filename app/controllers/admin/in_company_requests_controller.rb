class Admin::InCompanyRequestsController < ApplicationController
  #before_action :set_workshop, only: [:index, :show ]
  before_action :set_in_company_requests, only: [:index, :show]
  before_action :set_in_company_request, only: [:show, :edit, :update, :destroy, :create]

  def create
    event = Event.new
    event.title = @in_company_request.company_name
    event.spaces_available = @in_company_request.spaces_available
    event.title = @in_company_request.company_name
    event.public = false
    event.date = @in_company_request.date
    event.save!
  end

  def index

  end

  def show
  end

  def update
    if @in_company_request.update_attributes(in_company_request_params)
      redirect_to admin_in_company_request_url, notice: "In-Company Request successfully updated"
    else
      redirect_to admin_in_company_request_url, alert: "Please fill in all required fields"
    end
  end

  def destroy
    @in_company_request.destroy
    redirect_to admin_in_company_request_url, notice: "In-Company Request has been deleted"
  end


  private

    def in_company_request_params
      params.require(:in_company_request).permit(:first_name, :last_name,
        :email, :company_name, :email, :date, :spaces_available, :comments,
        :workshop_id)
    end

    def set_workshop
      @workshop = Workshop.find(params[:in_company_request.workshop_id])
    end

    def set_in_company_requests
      @in_company_requests = InCompanyRequest.all
    end

    def set_in_company_request
      @in_company_request = InCompanyRequest.find(params[:id])
    end



end
