FactoryGirl.define do
  factory :user do
    sequence :ic_number do |n|
        zeros = 4 - n.to_s.size
        number = "0"*zeros + n.to_s
        "800829-12-#{number}"
    end
    sequence :email do |n|
        "fadhil.luqman#{n}@gmail.com"
    end
    password 'password'
    password_confirmation 'password'
    phone '0126893949'
    gender 'm'
    is_active true
    confirmed true
    first_name 'Fadhil'
    last_name 'Luqman'
    current_employment_status 'part_time_business'


    factory :admin do
        association :role, factory: :admin_role
    end


  end
  trait :profile_completed do
    walk_in_first_time false
    profile_complete true
  end
end

