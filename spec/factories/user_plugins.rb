# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_plugin do
    user_id 1
    name "MyString"
    position 1
  end
end
