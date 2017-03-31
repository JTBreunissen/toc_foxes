class Admin::InCompanyRequestController < ApplicationController
  before action :workshop, only: [:index, :show ]

  def create
    event = Event.new(params)
    event.title = @in_company_request.company_name
    event.spaces_available = @in_company_request.spaces_available
    event.title = @in_company_request.company_name
    event.public = false
    event.date = @in_company_request.date
    event.save!
  end

  def index
    @in_company_requests = InCompanyRequest.all
  end

  def show
    @in_company_request = InCompanyRequest.find(params[:id])
  end

  def update
    in_company_request = InCompanyRequest.find(params[:id])
    in_company_request.update!(in_company_request_params)
    redirect_to in_company_request
  end

  def destroy
    in_company_request = InCompanyRequest.find(params[:id])
    in_company_request.destroy
  end





  private

    def in_company_request_params
      params.require(:in_company_request).permit(:first_name, :last_name,
        :email, :company_name, :email, :date, :spaces_available, :comments,
        :workshop_id)
    end

    def workshop
      @workshop = Workshop.find(params[:workshop_id])
    end

end
