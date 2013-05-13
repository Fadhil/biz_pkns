# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendance_list do
    course_id 1
    program_id 1
    max_attendees 1
    attendee_counter 1
  end
end
