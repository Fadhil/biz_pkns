# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendee do
    user_id 1
    first_name "MyString"
    last_name "MyString"
    email "some@email.com"
    ic_number "111111-11-1111"
    attended false
  end
end
