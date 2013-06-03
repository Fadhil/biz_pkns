# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :completed_survey do
    user_id 1
    survey_id 1
    completed false
  end
end
