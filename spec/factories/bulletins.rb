# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bulletin do
    post_to "MyString"
    subject_title "MyString"
    content "MyText"
  end
end
