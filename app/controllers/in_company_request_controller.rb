class InCompanyRequestController < ApplicationController
  def create
    @in_company_request = InCompanyRequest.new(in_company_request_params)
  end

  private

    def in_company_request_params
      params.require(:in_company_request).permit(:first_name, :last_name,
        :email, :company_name, :email, :date, :spaces_available, :comments,
        :workshop_id)
    end


end
