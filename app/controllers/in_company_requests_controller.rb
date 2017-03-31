class InCompanyRequestsController < ApplicationController
  def create
    @in_company_request = InCompanyRequest.new(in_company_request_params)

    if @in_company_request.save!
      redirect_to in_company_path, notice: "Sponsor successfully created"
    else
      redirect_to in_company_path, alert: "Please fill in all required fields"
    end
  end

  private

    def in_company_request_params
      params.require(:in_company_request).permit(:first_name, :last_name,
        :email, :company_name, :email, :date, :spaces_available, :comments,
        :workshop_id)
    end


end
