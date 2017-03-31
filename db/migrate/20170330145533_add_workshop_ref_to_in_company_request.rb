class AddWorkshopRefToInCompanyRequest < ActiveRecord::Migration[5.0]
  def change
    add_reference :in_company_requests, :workshop, foreign_key: true
  end
end
