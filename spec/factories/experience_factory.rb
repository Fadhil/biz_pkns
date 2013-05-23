FactoryGirl.define do
  factory :experience, class: "UsersSkill" do
    association :skill
    association :user
    experience 5
  end
end