# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    name "MyString"
    ic_no "MyString"
    email "MyString"
    mobile_no "MyString"
    emergency_no "MyString"
    address "MyText"
    property_name "MyString"
    lot_no "MyString"
    ref_no "MyString"
  end
end
