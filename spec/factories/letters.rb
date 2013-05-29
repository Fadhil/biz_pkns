# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :letter do
    subject "MyString"
    first_name "MyString"
    last_name "MyString"
    message "MyString"
  end
end
