FactoryGirl.define do
  factory :admin_role, class: Role do
    name 'admin'
  end

  factory :user_role, class: Role do
    name 'user'
  end
end 