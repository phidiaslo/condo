# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :faq do
    property_name "MyString"
    question "MyString"
    answer "MyText"
  end
end
