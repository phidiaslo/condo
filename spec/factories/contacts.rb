# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name "MyString"
    contact_no "MyString"
    importance "MyString"
    address "MyText"
  end
end
