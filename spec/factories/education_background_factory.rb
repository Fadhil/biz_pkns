FactoryGirl.define do
  factory :education_background, class: EducationsUser do
    association :user
    association :education
    description 'B.IT (Hons)'
  end
end 