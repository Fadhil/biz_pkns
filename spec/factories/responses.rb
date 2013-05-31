# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    user_id 1
    question_id 1
    answer "MyString"
  end
end
