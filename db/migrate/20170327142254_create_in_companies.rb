class CreateInCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :in_companies do |t|
      t.string :company_name
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
