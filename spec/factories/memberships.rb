# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :membership do
    member_number "MyString"
    user_id 1
  end
end
