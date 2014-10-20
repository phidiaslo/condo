# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice do
    inv_no "MyString"
    inv_date "2014-10-09"
    due_date "2014-10-09"
    lot_no "MyString"
    recipient "MyString"
    address "MyText"
    description "MyText"
    amount "9.99"
  end
end
