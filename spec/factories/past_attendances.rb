# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :past_attendance do
    program "MyString"
    course "MyString"
    start_date "2013-05-27"
    end_date "2013-05-27"
    venue "MyString"
    first_name "MyString"
    last_name "MyString"
    ic_number "MyString"
    phone "MyString"
    email "MyString"
  end
end
