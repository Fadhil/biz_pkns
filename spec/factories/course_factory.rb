FactoryGirl.define do
 factory :course do

  name 'test'

  description 'Some course descriptions here'
  start_date 2.days.from_now
  end_date 2.months.from_now

  venue 'Some Venue or Other'

  association :program, factory: :program, name: 'Program A'
 end
end