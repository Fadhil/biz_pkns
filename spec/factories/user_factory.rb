FactoryGirl.define do
  factory :user do
    ic_number '800829-12-5231'
    email 'fadhil.luqman@gmail.com'
    password 'password'
    password_confirmation 'password'
    phone '0126893949'
    
    association :role, factory: :admin_role
  end
end