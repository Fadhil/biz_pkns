FactoryGirl.define do 
  factory :consultant do
    sequence(:first_name) { |n| "John" }
    sequence(:last_name) { |n| "Doe#{n}"}
    password 'Password'
    password_confirmation 'Password'
    sequence(:email) { |n| "johndoe#{n}@email.com"}
    is_active true
  end
end