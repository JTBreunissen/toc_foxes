FactoryGirl.define do
  factory :event do
    title "MyString"
    image "MyString"
    location "MyString"
    spaces_available 1
    workshop nil
    sponsor nil
    attend nil
    public false
  end
end
