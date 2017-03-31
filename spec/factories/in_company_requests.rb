FactoryGirl.define do
  factory :in_company_request do
    first_name "MyString"
    last_name "MyString"
    company_name "MyString"
    email "MyString"
    date Date.new(2017, 12, 3)
    spaces_available 1
    comments "MyText"
  end
end
