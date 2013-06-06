# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :advert do
    title "MyString"
    description "MyString"
    location "MyString"
    time "MyString"
    start_date "2013-06-05"
    end_date "2013-06-05"
    paid_for false
    active false
    weight 1
    capacity 1
    content "MyText"
  end
end
